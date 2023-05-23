import 'package:animals_update/constant/image_animals.dart';
import 'package:animals_update/constant/image_number.dart';
import 'package:animals_update/view/page_home_animals.dart';
import 'package:animals_update/view/page_home_number.dart';
import 'package:flutter/material.dart';
import '../widgets/widget_home_page.dart';

/// Home Pege
class HomePege extends StatelessWidget {
  const HomePege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Widget Home Padge
                WidgetHomePadge(
                  /// on Tap
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        /// Page Home Animals
                        return const PageHomeAnimals();
                      },
                    ));
                  },
                  titel: "Animals",
                  photo: AnimalsImage.home,
                ),
                const SizedBox(height: 30),
                WidgetHomePadge(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        /// Page Home Number
                        return const PageHomeNumber();
                      },
                    ));
                  },
                  titel: "Numbers",
                  photo: NumberImages.ten,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
