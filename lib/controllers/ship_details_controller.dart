import 'package:get/get.dart';
import 'package:united/core/class/status_request.dart';
import 'package:united/core/constants/route_names.dart';
import 'package:united/core/functions/handling_data.dart';
import 'package:united/data/sources/apis/shipdetails_data.dart';

abstract class ShipDetailsAbs extends GetxController {
  getShipDetails(String ship);
  toHome();
}

class ShipDetailsController extends ShipDetailsAbs {
  ShipDetailsData shipDetailsData = ShipDetailsData(Get.find());

  String? ship;
  Map shipdetails = {};

  StatusRequest statusRequest = StatusRequest.none;
  @override
  getShipDetails(String ship) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await shipDetailsData.postdata(ship);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        shipdetails.addAll(response['data']);
        // print(shipdetails['ship_name'].toString());
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Ship Name is not correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  toHome() {
    Get.offAllNamed(AppRoutes.home);
  }

  @override
  void onInit() {
    ship = Get.arguments['ship'];
    // toHome();
    getShipDetails(ship!);
    super.onInit();
  }
}
