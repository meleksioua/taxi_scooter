import 'package:flutter/material.dart';

import '../constants.dart';

AppBar buildAppBar(BuildContext context,
    {bool isTransparent = false, String title}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : jPrimaryColor,
    elevation: 0,
    
    title: ! isTransparent
        ? Text(
      isTransparent ? "" : title,
      style: TextStyle(color: kTextColor),
    )
        : null,
    centerTitle: true,
    actions: [
      IconButton(
        icon: ClipOval(child: Image.asset("assets/images/logo-jtard.png")),
        onPressed: () {},
      )
    ],
  );
}