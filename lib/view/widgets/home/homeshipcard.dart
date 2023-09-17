import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:united/controllers/home_controller.dart';
import 'package:united/core/constants/app_color.dart';

class HomeShipCard extends GetView<HomeController> {
  // final ShipsModel shipsModel;
  const HomeShipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: AppColor.secondaryColor,
      ),
      height: 480,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemCount: controller.ships.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  controller.toShipDetails(
                      controller.ships[index]['ship_name'].toString());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: AppColor.secondaryColor)),
                  elevation: 20,
                  shadowColor: AppColor.secondaryColor,
                  // color: AppColor.primaryColor,
                  child: SizedBox(
                    width: 300,
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            // alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            margin: const EdgeInsets.only(bottom: 20, top: 10),
                            height: 150,
                            width: 100,
                            child: const Icon(
                              Icons.sailing,
                              size: 100,
                              color: AppColor.secondaryColor,
                            ),
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.anchor,
                              color: AppColor.primaryColor,
                              size: 30,
                            ),
                            title: Text(
                              "${controller.ships[index]['ship_name']}",
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
                          ListTile(
                            leading: const Icon(
                              Icons.sailing,
                              color: AppColor.primaryColor,
                              size: 30,
                            ),
                            title: Text(
                              "${controller.ships[index]['ship_type']}",
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
                          ListTile(
                            leading: const Icon(
                              Icons.pin_outlined,
                              color: AppColor.primaryColor,
                              size: 30,
                            ),
                            title: Text(
                              "${controller.ships[index]['ship_imo_number']}",
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
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
