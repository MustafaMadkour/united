import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:united/controllers/add_ship_controller.dart';
import 'package:united/core/class/handling_data_view.dart';
import 'package:united/core/constants/app_color.dart';
import 'package:united/core/functions/validator.dart';
import 'package:united/view/widgets/auth/aut_title.dart';
import 'package:united/view/widgets/auth/auth_button.dart';
import 'package:united/view/widgets/auth/auth_subtitle.dart';
import 'package:united/view/widgets/auth/auth_textform.dart';

class AddShip extends StatelessWidget {
  const AddShip({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddShipController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: const AuthTitle(
          title: "Add Ship",
        ),
      ),
      body: Container(
        child: GetBuilder<AddShipController>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      const AuthSubTitle(
                        subtitle: "Please enter your new ship details",
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      AuthTextForm(
                        isNum: false,
                        labeltext: "Ship Name",
                        hinttext: "Add ship's name",
                        fieldicon: Icons.sailing,
                        myController: controller.ship,
                        validate: (val) {
                          return validator(val!, 5, 100, "Ship Name");
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Ship Type",
                        hinttext: "Add ship's type",
                        fieldicon: Icons.anchor,
                        myController: controller.type,
                        validate: (val) {
                          return validator(val!, 5, 100, "Ship Type");
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Ship Capacity",
                        hinttext: "Add ship's capacity",
                        fieldicon: Icons.reduce_capacity,
                        myController: controller.capacity,
                        validate: (val) {
                          return validator(val!, 5, 100, "Ship Capacity");
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "IMO",
                        hinttext: "Add ship's IMO number",
                        fieldicon: Icons.qr_code_2,
                        myController: controller.imo,
                        validate: (val) {
                          return validator(val!, 5, 100, "IMO");
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Build Year",
                        hinttext: "Add ship's build year",
                        fieldicon: Icons.edit_calendar,
                        myController: controller.buildyear,
                        validate: (val) {
                          return validator(val!, 4, 4, "Build Year");
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Ship Flag",
                        hinttext: "Add ship's Flag",
                        fieldicon: Icons.flag,
                        myController: controller.flag,
                        validate: (val) {
                          return validator(val!, 5, 100, "Ship Flag");
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      GetBuilder<AddShipController>(
                        builder: (controller) => AuthTextForm(
                          isPass: controller.isShowPass,
                          onTapIcon: () {
                            controller.showPass();
                          },
                          isNum: false,
                          labeltext: "Password",
                          hinttext: "Add Password",
                          fieldicon: Icons.lock_outline,
                          myController: controller.password,
                          validate: (val) {
                            return validator(val!, 5, 30, "pass_label".tr);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // GetBuilder<RegisterController>(
                      //   builder: (controller) => AuthTextForm(
                      //     isPass: controller.isShowPass,
                      //     onTapIcon: () {
                      //       controller.showPass();
                      //     },
                      //     isNum: false,
                      //     labeltext: "pass_confirm_label".tr,
                      //     hinttext: "pass_confirm_hint".tr,
                      //     fieldicon: Icons.lock_reset_outlined,
                      //     validate: (val) {
                      //       return validator(val!, 5, 30, "pass_confirm_label".tr);
                      //     },
                      //   ),
                      // ),
                      const SizedBox(
                        height: 15,
                      ),
                      AuthButton(
                        text: "Save",
                        onPressed: () {
                          controller.addShip();
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AuthButton(
                        text: "Cancel",
                        onPressed: () {
                          controller.toHome();
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // AuthToPage(
                      //   text: "to_signin".tr,
                      //   linkText: "signin".tr,
                      //   onTap: () {
                      //     controller.toLogin();
                      //   },
                      // ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}