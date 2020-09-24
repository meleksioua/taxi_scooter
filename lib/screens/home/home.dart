import 'package:flutter/material.dart';
import 'package:taxi_scooter/widgets/app_bar.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context,  title:'test'),
    );
  }
}