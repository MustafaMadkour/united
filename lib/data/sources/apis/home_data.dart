import 'package:united/api_links.dart';
import 'package:united/core/class/crud.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(ApiLinks.home, {});
    return response.fold((l) => l, (r) => r);
  }

  getShip(String ship) async {
    var response = await crud.postData(ApiLinks.shipdetails, {"ship": ship});
    return response.fold((l) => l, (r) => r);
  }
}
