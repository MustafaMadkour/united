import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:united/api_links.dart';
import 'package:united/controllers/ship_details_controller.dart';
import 'package:united/core/class/handling_data_view.dart';
import 'package:united/core/constants/app_color.dart';
import 'package:united/view/widgets/home/homeheading.dart';

class ShipDetails extends StatelessWidget {
  const ShipDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ShipDetailsController());
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<ShipDetailsController>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                HomeHeading(
                  title: "${controller.shipdetails['ship_name']}",
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: 500,
                  // height: MediaQuery.of(context).size.height * 2 / 3,
                  // color: AppColor.primaryColor,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.network(
                              "${ApiLinks.shipImages}/${controller.shipdetails['ship_image']}",
                              width: MediaQuery.of(context).size.width * 2 / 3,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2 / 3,
                            child: ListTile(
                              leading: const Icon(
                                Icons.anchor,
                                color: AppColor.primaryColor,
                                size: 30,
                              ),
                              title: Text(
                                "${controller.shipdetails['ship_name']}",
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              subtitle: const Text(
                                "Name",
                                style: TextStyle(
                                  color: AppColor.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2 / 3,
                            child: ListTile(
                              leading: const Icon(
                                Icons.sailing,
                                color: AppColor.primaryColor,
                                size: 30,
                              ),
                              title: Text(
                                "${controller.shipdetails['ship_type']}",
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              subtitle: const Text(
                                "Type",
                                style: TextStyle(
                                  color: AppColor.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2 / 3,
                            child: ListTile(
                              leading: const Icon(
                                Icons.pin_outlined,
                                color: AppColor.primaryColor,
                                size: 30,
                              ),
                              title: Text(
                                "${controller.shipdetails['ship_imo_number']}",
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              subtitle: const Text(
                                "IMO",
                                style: TextStyle(
                                  color: AppColor.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GridTile(
                        child: MaterialButton(
                          onPressed: () {},
                          color: AppColor.primaryColor,
                          elevation: 5,
                          
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: AppColor.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: const BottomBar(),
    );
  }
}
