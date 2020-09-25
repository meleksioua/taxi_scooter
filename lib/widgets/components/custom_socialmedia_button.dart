import 'package:flutter/material.dart';

class Custom_SocialMedia_Button extends StatefulWidget {

  String char;
  Custom_SocialMedia_Button({
    this.char
  });

  @override
  _Custom_SocialMedia_ButtonState createState() => _Custom_SocialMedia_ButtonState();
}

class _Custom_SocialMedia_ButtonState extends State<Custom_SocialMedia_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            offset: Offset(12, 11),
            blurRadius: 26,
            color: Color(0xffaaaaaa).withOpacity(0.1),
          )
        ],
      ),
      //
      child: Center(
        child: Text(
          widget.char,
          style: TextStyle(
            fontFamily: 'ProductSans',
            fontSize: 29,
            fontWeight: FontWeight.bold,
            color: Color(0xff0962FF),
          ),
        ),
      ),
    );
  }
}
