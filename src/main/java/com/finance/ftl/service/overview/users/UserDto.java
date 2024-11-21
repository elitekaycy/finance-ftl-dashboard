package com.finance.ftl.service.overview.users;

public class UserDto {
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
