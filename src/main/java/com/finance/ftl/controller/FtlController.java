package com.finance.ftl.controller;

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
      @RequestParam(name = "currentPage", defaultValue = "", required = false) String currentPago) {

    ModelAndView dashboardView = new ModelAndView("dashboard");
    return dashboardView;
  }

}
