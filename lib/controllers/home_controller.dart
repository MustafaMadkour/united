import 'package:get/get.dart';
import 'package:united/core/class/status_request.dart';
import 'package:united/core/constants/route_names.dart';
import 'package:united/core/functions/handling_data.dart';
import 'package:united/core/services/services.dart';
import 'package:united/data/sources/apis/home_data.dart';

abstract class HomeAbst extends GetxController {
  initialData();
  toAddShip();
  toShipDetails(String ship);
  getData();
}

class HomeController extends HomeAbst {
  MyServices myServices = Get.find();

  String? username;
  String? id;
  String? shipid;

  HomeData homeData = HomeData(Get.find());
  // ShipDetailsData shipDetailsData = ShipDetailsData(Get.find());

  List data = [];
  List ships = [];
  List certs = [];
  List renewcerts = [];
  List crew = [];

  late StatusRequest statusRequest;
  // late ShipsModel shipsModel;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        ships.addAll(response['ships']);
        certs.addAll(response['certificates']);
        renewcerts.addAll(response['renew_certificates']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  toAddShip() {
    Get.offNamed(AppRoutes.addShip);
  }

  @override
  toShipDetails(ship) {
    Get.toNamed("shipdetails", arguments: {"ship": ship});
  }

  // @override
  // toShipDetails(ShipsModel shipsModel) async {
  //   statusRequest = StatusRequest.loading;
  //   var response = await shipDetailsData.getData(shipsModel);
  //   statusRequest = handlingData(response);

  //   if (statusRequest == StatusRequest.success) {
  //     if (response['status'] == "success") {
  //       ships.addAll(response['ships']);
  //       certs.addAll(response['certificates']);
  //       renewcerts.addAll(response['renew_certificates']);
  //     } else {
  //       statusRequest = StatusRequest.failure;
  //     }

  //     Get.offNamed(AppRoutes.shipDetails, arguments: {"ship": shipsModel.name});
  //     print(Get.arguments['ship']);
  //   }

  // }

  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();
  }
}
