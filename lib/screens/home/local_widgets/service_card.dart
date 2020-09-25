import 'package:flutter/material.dart';
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
          title: "Nos services",
          press: () {},
        ),
        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              PreventCard(
                text:
                "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                image: "assets/images/profile.png",
                title: "Taxi scooter",
                  align: kAlignLeft,
                pos: 130,
              ),

              PreventCard(
                text:
                "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                image: "assets/images/profile.png",
                title: "Delivery scooter",
                  align: kAlignRight,
                pos:0
              ),
              PreventCard(
                text:
                "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                image: "assets/images/profile.png",
                title: "Wash your hands",
                  align: kAlignLeft,
                  pos: 130,

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
  final  align;
  final double pos;
  const PreventCard({
    Key key,
    this.image,
    this.title,
    this.text,
    this.align,
    this.pos
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                    alignment: align
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),

            Positioned(
              left: pos,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                  child: Column(
                    children: [


                      Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 16,

                        ),

                      ),

                      Text(
                        text,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      RaisedButton(
                        color: jSecondColor,
                        shape: StadiumBorder(),
                        onPressed: () {
                          /*...*/
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Passer commande'
                          ),
                        )
                      ),


                    ],
                  )
              ),
            ),


          ],


        ),
      ),
    );
  }
}
