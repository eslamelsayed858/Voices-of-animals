import 'package:flutter/material.dart';

import '../constant/image_animals.dart';

/// Widgets AppBar
AppBar AppBarHomePage(String text) {
  return AppBar(
    title: Text(
      /// Text AppBar
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: const Icon(
      /// Icons AppBar
      Icons.menu,
      color: Colors.black,
      size: 30,
    ),
    elevation: 10,
    actions: const [
      Padding(
        padding: EdgeInsets.all(15),
        child: Image(
          image: AssetImage(AnimalsImage.pawprint),
        ),
      ),
    ],
  );
}
