package com.finance.ftl.service.asset.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.web.reactive.function.client.WebClient;

import reactor.core.publisher.Mono;

public class AssetServiceImpl {

  private static final Logger logger = LoggerFactory.getLogger(AssetServiceImpl.class);
  private static WebClient webClient = WebClient.builder().build();
  private static String assetUrl = "https://api.coincap.io/v2/assets";

  public static Mono<List<Map<String, Object>>> getAssets() {
    return webClient
        .get()
        .uri(assetUrl)
        .retrieve()
        .bodyToMono(new ParameterizedTypeReference<Map<String, Object>>() {
        })
        .doOnNext(data -> logger.debug("Received data: {}", data))
        .map(data -> {
          List<Map<String, Object>> assets = new ArrayList<>();

          @SuppressWarnings("unchecked")
          List<Map<String, Object>> pairs = (List<Map<String, Object>>) data.get("data");

          logger.info("Processing {} pairs", pairs);

          pairs.stream().limit(10).forEach(pair -> {
            Map<String, Object> asset = new HashMap<>();
            asset.put("Asset", pair.get("name"));
            asset.put("Chain", pair.get("symbol"));
            asset.put("Price", pair.get("priceUsd"));
            asset.put("Balance", pair.get("supply"));

            logger.debug("Processed asset: {}", asset);
            assets.add(asset);
          });
          return assets;
        })

    ;
  }
}
