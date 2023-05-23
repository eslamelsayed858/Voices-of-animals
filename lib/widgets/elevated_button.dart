import 'package:flutter/material.dart';

/// Widgets Button
class BtonAnimals extends StatelessWidget {
  const BtonAnimals(
      {super.key,
      required this.titel,
      required this.icon,
      this.color = Colors.indigo,
      required this.onClick});
  final String titel;
  final String icon;
  final Color color;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ElevatedButton.icon(
          /// on Click
          onPressed: onClick,

          /// Text Button
          label: Text(titel),
          icon: Image(
            /// Image Button
            image: AssetImage(icon),
            width: 19,
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              foregroundColor: Colors.white,
              alignment: Alignment.centerLeft),
        ),
      ),
    );
  }
}
