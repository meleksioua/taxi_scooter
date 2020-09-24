import 'package:flutter/material.dart';
import 'package:taxi_scooter/size_config.dart';

import 'service_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call SizeConfig on your starting page
    SizeConfig().init(context);
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            ServiceCard(),
            VerticalSpacing(),
           /* PopularPlaces(),
            VerticalSpacing(),
            TopTravelers(),
            VerticalSpacing(),*/
          ],
        ),
      ),
    );
  }
}
