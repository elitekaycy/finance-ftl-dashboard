package com.finance.ftl.service.overview.users.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.finance.ftl.controller.FtlController;
import com.finance.ftl.service.overview.users.UserDto;
import com.finance.ftl.service.overview.users.UserService;

import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class UserServiceImpl {

  private static final Logger log = LoggerFactory.getLogger(FtlController.class);
  static OkHttpClient client = new OkHttpClient();

  public static List<UserDto> getUserList() {
    Request request = new Request.Builder().url("https://dummyapi.online/api/social-profiles").build();
    Call requestCall = client.newCall(request);
    try (Response response = requestCall.execute()) {
      if (response.isSuccessful() && response.body() != null) {
        String json = response.body().string();
        JSONArray jsonArray = new JSONArray(json);
        List<UserDto> userDtos = new ArrayList<>();
        for (int i = 0; i < jsonArray.length(); i++) {
          JSONObject object = jsonArray.getJSONObject(i);
          userDtos.add(new UserDto(object.getString("fullName"), object.getString("joinedDate"),
              object.getString("profilePic"), object.getString("location"), object.getString("username")));
        }
        Collections.shuffle(userDtos);
        return userDtos.subList(0, 6);
      }
    } catch (IOException e) {
      log.error(e.getMessage());
    }
    return Collections.emptyList();
  }

}
