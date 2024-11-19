package com.finance.ftl.service.asset;

import java.util.List;
import java.util.Map;

import reactor.core.publisher.Mono;

public interface AssetService {
  public Mono<List<Map<String, Object>>> getAssets();
}
