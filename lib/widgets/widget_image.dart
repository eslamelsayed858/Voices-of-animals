import 'package:flutter/material.dart';

class WidgetImage extends StatelessWidget {
  const WidgetImage({super.key, required this.image});

  /// proprtes
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                /// image
                image,
              ),
              fit: BoxFit.fill),
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
