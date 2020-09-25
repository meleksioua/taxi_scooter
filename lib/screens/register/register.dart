import 'package:flutter/material.dart';
import 'package:taxi_scooter/screens/home/home.dart';
import 'package:taxi_scooter/widgets/clippers/inner_clipped_part.dart';
import 'package:taxi_scooter/widgets/clippers/outer_clipped_part.dart';
import 'package:taxi_scooter/widgets/components/custom_botton.dart';
import 'package:taxi_scooter/widgets/components/custom_input_box.dart';
import 'package:taxi_scooter/widgets/components/custom_password_box.dart';
import 'package:taxi_scooter/widgets/components/custom_socialmedia_button.dart';

import '../login/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 60),
                      child: Text(
                        'S\'inscrire',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 35,
                          color: Color(0xff0C2551),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left : 40, top: 5),
                      child: Text(
                        'S\'inscrire avec',
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Custom_SocialMedia_Button(
                          char: 'G',
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Custom_SocialMedia_Button(
                          char: 'f',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  CustomInputBox(
                    inputHint: 'Nom',
                  ),

                  CustomInputBox(
                    inputHint: 'Email',
                  ),

                  CustomInputBox(
                    inputHint: 'numéro mobile',
                  ),

                  CustomInputBox(
                    inputHint: 'Nom d\'utilisateur',
                  ),

                  CustomPasswordBox(),

                  SizedBox(
                    height: 3,
                  ),

                  Text(
                    'En cliquant sur S\'inscrire, vous acceptez \nnos terms et conditions sans réservation.',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 15.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  CustomButton(
                    label: 'S\'INSCRIRE',
                    labelColor: Colors.white,
                    color: Color(0xff0962ff),
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                            return Home();
                          },
                        ),
                      );
                    } ,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                            return LoginUI();
                          },
                        ),
                      );
                    },


                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Vous avez un compt? ',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: 'Se connecter',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff90b7ff),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),





                ]
            ),
            ClipPath(
              clipper: OuterClippedPart(),
              child: Container(
                color: Color(0xff0962ff),
                width: width,
                height: height,
              ),
            ),
            //
            ClipPath(
              clipper: InnerClippedPart(),
              child: Container(
                color: Color(0xff0c2551),
                width: width,
                height: height,
              ),
            ),
          ],),
      ),
    );
  }
}
