import 'package:flutter/material.dart';
import 'package:taxi_scooter/widgets/app_bar.dart';
import 'package:taxi_scooter/widgets/custom_bottom_nav_bar.dart';
import 'package:taxi_scooter/screens/home/local_widgets/body.dart';
import 'package:taxi_scooter/widgets/menu_drawer.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context, title:'Home'),
      drawer: MenuDrawer(
        image: "assets/images/profile.png",
        name: "Melek Sioua",
        userName: "meleksioua",
      ),
      body: SingleChildScrollView(
          child: Body()
      ),
      bottomNavigationBar: CustomBottonNavBar(),

    );
  }
}