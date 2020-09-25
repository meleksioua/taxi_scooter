import 'package:flutter/material.dart';
import 'package:taxi_scooter/size_config.dart';

class CustomButton extends StatefulWidget {

   String label;
   Color labelColor;
   Color color;
   Color borderColor;
   Function press;

   CustomButton({
      this.label,
      this.labelColor,
      this.color,
      this.borderColor,
      this.press,
   });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: FlatButton(

          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: widget.color,
          onPressed: (){
            widget.press();
          },
          child: Text(
            widget.label,
            style: TextStyle(
              color: widget.labelColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
