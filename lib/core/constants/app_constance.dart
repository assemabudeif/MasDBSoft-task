import 'package:flutter/material.dart';

/// App Name and Version Constants
const String kAppName = 'Interview Task';
const String kAppVersion = '1.0.0';
const String kAppVersionCode = '1';
const String kAppVersionName = '1.0.0';
const String kAppPackageName = 'com.example.interview_task';

/// App Constants
const kDefaultLanguage = 'en';
const kDefaultCountry = 'US';
const kDefaultLocale = Locale(kDefaultLanguage, kDefaultCountry);
const kDefaultPadding = 14.0;
String kAppLanguageCode = '';
bool kFirstTime = true;
String kUserId = '';
String kUserName = '';

/// Animation Constants
const kDefaultTransitionDuration = Duration(milliseconds: 300);
const kDefaultAnimationDuration = Duration(milliseconds: 300);
const kSplashAnimationDuration = Duration(seconds: 1, milliseconds: 300);
const kSplashDuration = Duration(seconds: 2, milliseconds: 500);
