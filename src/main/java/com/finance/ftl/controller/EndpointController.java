package com.finance.ftl.controller;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.finance.ftl.service.asset.impl.AssetServiceImpl;

import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/api")
public class EndpointController {

  @GetMapping("/assets")
  public Mono<List<Map<String, Object>>> getAssets() {
    return AssetServiceImpl.getAssets();
  }

}
