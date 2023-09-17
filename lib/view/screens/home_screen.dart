import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:united/controllers/home_controller.dart';
import 'package:united/core/class/handling_data_view.dart';
import 'package:united/data/models/ships_model.dart';
import 'package:united/view/widgets/home/appbar.dart';
import 'package:united/view/widgets/home/homecertcard.dart';
import 'package:united/view/widgets/home/homecertexpire.dart';
import 'package:united/view/widgets/home/homeheading.dart';
import 'package:united/view/widgets/home/homeshipcard.dart';
import 'package:united/view/widgets/home/toaddship.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                HomeAppBar(
                  hint: "Find a ship",
                  onSearch: () {},
                  onpressed: () {},
                ),
                const SizedBox(
                  height: 50,
                ),
                ToAdd(
                  text: "Add Ship",
                  onPressed: () {
                    controller.toAddShip();
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                const HomeHeading(
                  title: "Your Fleet",
                ),
                const SizedBox(
                  height: 50,
                ),
                const HomeShipCard(),
                const SizedBox(
                  height: 50,
                ),
                const HomeHeading(
                  title: "Your Fleet Certificates",
                ),
                const SizedBox(
                  height: 30,
                ),
                const HomeCertCard(),
                const SizedBox(
                  height: 40,
                ),
                const HomeHeading(title: "Certificates to be renewed"),
                const SizedBox(
                  height: 30,
                ),
                const HomeCertExpire(),
                const SizedBox(
                  height: 40,
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
