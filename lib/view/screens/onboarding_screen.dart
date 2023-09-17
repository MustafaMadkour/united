import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:united/controllers/onboarding_controller.dart';
import 'package:united/core/constants/app_color.dart';
import 'package:united/view/widgets/onboarding/onboarding_button.dart';
import 'package:united/view/widgets/onboarding/onboarding_dots.dart';
import 'package:united/view/widgets/onboarding/onboarding_slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return  const Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: OnBoardingSlider(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  OnBoardingDots(),
                  Spacer(
                    flex: 2,
                  ),
                  OnBoardingButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
