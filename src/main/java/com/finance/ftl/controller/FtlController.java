package com.finance.ftl.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class FtlController {

  @GetMapping
  public ModelAndView dashboard(
      @RequestParam(name = "currentPage", defaultValue = "", required = false) String currentPage) {

    Map<String, Object> dashboardModel = new HashMap<>();

    dashboardModel.put("currentPage", currentPage);

    ModelAndView dashboardView = new ModelAndView("dashboard");
    dashboardView.addAllObjects(dashboardModel);
    return dashboardView;
  }

}
