
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:united/controllers/home_controller.dart';
import 'package:united/core/constants/app_color.dart';

class HomeCertExpire extends GetView<HomeController> {
  const HomeCertExpire({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 480,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    itemCount: controller.renewcerts.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, x) {
                      return Stack(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                    color: AppColor.secondaryColor)),
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
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 10),
                                      margin: const EdgeInsets.only(
                                          bottom: 20, top: 10),
                                      height: 150,
                                      width: 100,
                                      child: const Icon(
                                        Icons.timer_off_outlined,
                                        size: 100,
                                        color: Colors.red,
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                        Icons.sailing,
                                        color: AppColor.primaryColor,
                                        size: 30,
                                      ),
                                      title: Text(
                                        "${controller.renewcerts[x]['ship_name']}",
                                        style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontSize: 18,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      subtitle: const Text(
                                        "Ship",
                                        style: TextStyle(
                                          color: AppColor.secondaryColor,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                        Icons.file_copy,
                                        color: AppColor.primaryColor,
                                        size: 30,
                                      ),
                                      title: Text(
                                        "${controller.renewcerts[x]['ship_cert_name']}",
                                        style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontSize: 18,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      subtitle: const Text(
                                        "Certificate",
                                        style: TextStyle(
                                          color: AppColor.secondaryColor,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                        Icons.date_range,
                                        color: AppColor.primaryColor,
                                        size: 30,
                                      ),
                                      title: Text(
                                        "${controller.renewcerts[x]['ship_cert_issued_at']}",
                                        style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontSize: 18,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      subtitle: const Text(
                                        "Issued at",
                                        style: TextStyle(
                                          color: AppColor.secondaryColor,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                        Icons.timer_outlined,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                                      title: Text(
                                        "${controller.renewcerts[x]['ship_cert_expire_at']}",
                                        style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      subtitle: const Text(
                                        "Expires at",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
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