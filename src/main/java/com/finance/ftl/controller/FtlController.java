package com.finance.ftl.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finance.ftl.service.asset.impl.AssetServiceImpl;
import com.finance.ftl.service.overview.users.impl.UserServiceImpl;

@Controller
@RequestMapping("/")
public class FtlController {

  @GetMapping
  public ModelAndView dashboard(
      @RequestParam(name = "currentPage", defaultValue = "", required = false) String currentPage) {

    Map<String, Object> dashboardModel = new HashMap<>();

    dashboardModel.put("currentPage", currentPage);
    dashboardModel.put("assets", AssetServiceImpl.getAssets().block());
    dashboardModel.put("users", UserServiceImpl.getUserList());

    ModelAndView dashboardView = new ModelAndView("dashboard");
    dashboardView.addAllObjects(dashboardModel);
    return dashboardView;
  }
}
