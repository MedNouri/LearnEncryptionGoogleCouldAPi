package com.LearnCrypt;

import com.google.api.server.spi.Constant;

/**
 * Contains the client IDs and scopes for allowed clients consuming API.
 */
public class Constants {
  public static final String WEB_CLIENT_ID = "web client ID";
  public static final String ANDROID_CLIENT_ID = "Android client ID";
  public static final String IOS_CLIENT_ID = "iOS client ID";
  public static final String ANDROID_AUDIENCE = WEB_CLIENT_ID;
  public static final String API_EXPLORER_CLIENT_ID = Constant.API_EXPLORER_CLIENT_ID;
  public static final String EMAIL_SCOPE = "https://www.googleapis.com/auth/userinfo.email";
}
