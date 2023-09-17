import 'package:get/get.dart';
import 'package:united/core/constants/route_names.dart';
import 'package:united/core/middlewares/base_middleware.dart';
import 'package:united/data/models/ships_model.dart';
import 'package:united/view/screens/add_ship_screen.dart';
import 'package:united/view/screens/home_screen.dart';
import 'package:united/view/screens/language_screen.dart';
import 'package:united/view/screens/login_screen.dart';
import 'package:united/view/screens/onboarding_screen.dart';
import 'package:united/view/screens/ship_details_screen.dart';

List<GetPage<dynamic>>? routes = [
  // onboarding
  GetPage(name: AppRoutes.onBoarrding, page: () => const OnBoarding()),

  // Language
  GetPage(
    name: "/",
    page: () => const Language(),
    middlewares: [
      BaseMiddleware(),
    ],
  ),
  // GetPage(
  //   name: "/",
  //   page: () => const TestView(),
  // ),

  // Auth
  GetPage(name: AppRoutes.login, page: () => const Login()),
  // GetPage(name: AppRoutes.register, page: () => const Register()),
  // GetPage(name: AppRoutes.verifyRegister, page: () => const VerifyRegister()),
  // GetPage(name: AppRoutes.registerSuccess, page: () => const RegisterSuccess()),
  // GetPage(name: AppRoutes.forgetPass, page: () => const ForgetPass()),
  // GetPage(name: AppRoutes.verifyForget, page: () => const VerifyForget()),
  // GetPage(name: AppRoutes.resetPass, page: () => const ResetPass()),
  // GetPage(name: AppRoutes.resetSuccess, page: () => const ResetSuccess()),

  // Home
  GetPage(
    name: AppRoutes.home,
    page: () => const Home(),
    // arguments: Get.arguments['shipsmodel']
  ),
  // Ships
  GetPage(name: AppRoutes.addShip, page: () => const AddShip()),
  GetPage(
    name: AppRoutes.shipDetails,
    page: () => const ShipDetails(),
    // arguments: Get.arguments['ship']
  ),
];
