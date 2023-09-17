import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:united/app_routes.dart';
import 'package:united/bindings/initial_bindings.dart';
import 'package:united/core/localization/change_locale.dart';
import 'package:united/core/localization/translation.dart';
import 'package:united/core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      title: 'Fleet',
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: controller.appTheme,
      getPages: routes,
      initialBinding: InitialBindings(),
    );
  }
}