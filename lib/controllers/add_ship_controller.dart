import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:united/core/class/status_request.dart';
import 'package:united/core/constants/route_names.dart';
import 'package:united/core/functions/handling_data.dart';
import 'package:united/core/services/services.dart';
import 'package:united/data/sources/apis/addship_data.dart';

abstract class AddShipAbs extends GetxController {
  addShip();
  toHome();
}

class AddShipController extends AddShipAbs {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController ship;
  late TextEditingController type;
  late TextEditingController password;
  late TextEditingController buildyear;
  late TextEditingController imo;
  late TextEditingController capacity;
  late TextEditingController flag;
  bool isShowPass = true;

  

  StatusRequest statusRequest = StatusRequest.none;
  AddShipData addShipData = AddShipData(Get.find());
  MyServices myServices = Get.find();
  List data = [];
  
  showPass() {
    isShowPass = isShowPass == true ? false : true;
    update();
  }

  @override
  addShip() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await addShipData.postData(ship.text, password.text,
          type.text, buildyear.text, imo.text, capacity.text, flag.text);
      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoutes.home);
        } else {
          Get.defaultDialog(
              title: "Error", middleText: "Error sending ship data");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      //
    } else {}
  }

  @override
  void onInit() {
    ship = TextEditingController();
    password = TextEditingController();
    type = TextEditingController();
    buildyear = TextEditingController();
    imo = TextEditingController();
    capacity = TextEditingController();
    flag = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    ship.dispose();
    type.dispose();
    password.dispose();
    buildyear.dispose();
    imo.dispose();
    capacity.dispose();
    flag.dispose();
    super.dispose();
  }

  @override
  toHome() {
    Get.offAllNamed(AppRoutes.home);
  }
}