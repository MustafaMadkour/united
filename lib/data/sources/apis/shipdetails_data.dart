import 'package:united/api_links.dart';
import 'package:united/core/class/crud.dart';

class ShipDetailsData {
  Crud crud;
  ShipDetailsData(this.crud);
  postdata(String ship ) async {
    var response = await crud.postData(ApiLinks.shipdetails, {
      "ship" : ship , 
    });
    return response.fold((l) => l, (r) => r);
  }
}