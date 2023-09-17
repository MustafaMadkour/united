import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:united/core/constants/app_theme.dart';
import 'package:united/core/services/services.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  ThemeData appTheme = enTheme;

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    appTheme = langCode == "ar" ? arTheme : enTheme;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = arTheme;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = enTheme;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = enTheme;
    }
    super.onInit();
  }
}
