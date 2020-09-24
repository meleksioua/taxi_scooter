import 'package:flutter/material.dart';
import 'package:taxi_scooter/size_config.dart';

import 'service_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          ServiceCard(),
          VerticalSpacing(),
        ],
      ),
    );
  }
}
