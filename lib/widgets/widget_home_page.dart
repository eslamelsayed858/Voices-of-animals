import 'package:flutter/material.dart';

/// WidgetHomePadge
class WidgetHomePadge extends StatelessWidget {
  const WidgetHomePadge({
    super.key,
    required this.titel,
    required this.photo,
    required this.onTap,
  });

  /// properts
  final String titel;
  final String photo;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          /// on Tap
          onTap: onTap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(90),
            child: Container(
              color: const Color.fromARGB(255, 248, 244, 244),
              width: 200,
              height: 200,
              child: Image.asset(
                /// photo HomePage
                photo,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          /// Text Titel
          titel,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
