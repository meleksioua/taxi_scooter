import 'package:flutter/material.dart';


class CustomPasswordBox extends StatefulWidget {
  @override
  _CustomPasswordBoxState createState() => _CustomPasswordBoxState();
}

class _CustomPasswordBoxState extends State<CustomPasswordBox> {

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 15),
          child: TextFormField(

            style: TextStyle(
                fontSize: 19,
                color: Color(0xff0962ff),
                fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,

              hintText: "Mot de passe",
              hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[350],
                  fontWeight: FontWeight.w600),
              contentPadding:
              EdgeInsets.symmetric(vertical: 17, horizontal: 25),
              focusColor: Color(0xff0962ff),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(color: Color(0xff0962ff)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(
                  color: Colors.grey[350],
                ),
              ),

              suffixIcon: GestureDetector(
                onTap: (){
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
                child: Icon(
                  _showPassword ? Icons.visibility : Icons.visibility_off,
                ),
              )
            ),
            obscureText: !_showPassword,
            keyboardType: TextInputType.visiblePassword,
            validator: (value){
                if(value.isEmpty){
                    return "required";
                }else{
                  return null;
                  }
                },
          ),
        ),
        //
      ],
    );
  }
}
