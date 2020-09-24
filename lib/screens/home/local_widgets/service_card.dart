import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_scooter/widgets/section_title.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        VerticalSpacing(),
        SectionTitle(
          title: "Right Now At Spark",
          press: () {},
        ),
        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(height: 20),

              PreventCard(
                text:
                "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                image: "assets/images/profile.png",
                title: "Wash your hands",
              ),

              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        child: Container(
          height: 136,
          width: MediaQuery.of(context).size.width ,
          child:FittedBox(




          child: Row(
            children: <Widget> [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),

                  child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child:  Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 25,
                        ),

                      ),
                    ),
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(
                        fontSize: 25,
                      ),

                    ),
                       Text(
                        text,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                  ],
                )

              ),
              Container(
                width: 250,
                height: 250,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(24.0),
                  child: Image(
                    fit: BoxFit.contain,
                    alignment: Alignment.topRight,
                    image: AssetImage(image),
                  ),
                ),

              ),
            ],
          ),
          ),
        ),

      ),
    );

  }
}
