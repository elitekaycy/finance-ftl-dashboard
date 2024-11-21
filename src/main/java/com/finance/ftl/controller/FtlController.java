package com.finance.ftl.controller;

import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/")
public class FtlController {
  private static final Logger log = LoggerFactory.getLogger(FtlController.class);
  OkHttpClient client = new OkHttpClient();

  @GetMapping
  public ModelAndView dashboard(
      @RequestParam(name = "currentPage", defaultValue = "", required = false) String currentPage) {

    ModelAndView modelAndView = new ModelAndView("dashboard");
    modelAndView.addObject("users", getUserList());
    return modelAndView;
  }

  private List<UserDto> getUserList(){
    Request request = new Request.Builder().url("https://dummyapi.online/api/social-profiles").build();
    Call requestCall = client.newCall(request);
    try(Response response = requestCall.execute()) {
      if (response.isSuccessful() && response.body() != null){
        String json = response.body().string();
        JSONArray jsonArray = new JSONArray(json);
        List<UserDto> userDtos = new ArrayList<>();
        for(int i = 0; i < jsonArray.length(); i++){
          JSONObject object = jsonArray.getJSONObject(i);
          userDtos.add(new UserDto(object.getString("fullName"), object.getString("joinedDate"),object.getString("profilePic"), object.getString("location"), object.getString("username")));
        }
        Collections.shuffle(userDtos);
        return userDtos.subList(0, 6);
      }
    } catch (IOException e) {
      log.error(e.getMessage());
    }
    return Collections.emptyList();
  }

  public static class UserDto{
    private String name;
    private String joined;
    private String profileImage;
    private String location;
    private String username;

    public String getName() {
      return name;
    }

    public String getJoined() {
      return joined;
    }

    public String getProfileImage() {
      return profileImage;
    }

    public String getLocation() {
      return location;
    }

    public String getUsername() {
      return username;
    }

    public UserDto(String name, String joined, String profileImage, String location, String username) {
      this.name = name;
      this.joined = joined;
      this.profileImage = profileImage;
      this.location = location;
      this.username = username;
    }
  }

}
