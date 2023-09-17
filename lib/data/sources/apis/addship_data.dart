
import 'package:united/api_links.dart';
import 'package:united/core/class/crud.dart';

class AddShipData {
  Crud crud;
  AddShipData(this.crud);

  postData(String ship, String password, String type, String buildyear,
      String imo, String capacity, String flag) async {
    var response = await crud.postData(ApiLinks.addship, {
      "ship": ship,
      "password": password,
      "type": type,
      "buildyear": buildyear,
      "imo": imo,
      "capacity": capacity,
      "flag": flag
    });
    return response.fold((l) => l, (r) => r);
  }
}
