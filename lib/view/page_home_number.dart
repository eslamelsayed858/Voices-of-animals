import 'package:animals_update/constant/audio_number.dart';
import 'package:animals_update/constant/icon_numbers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../constant/image_number.dart';
import '../widgets/app_bar_home_page.dart';
import '../widgets/elevated_button.dart';
import '../widgets/widget_image.dart';

/// Home page Number
class PageHomeNumber extends StatefulWidget {
  const PageHomeNumber({super.key});

  @override
  State<PageHomeNumber> createState() => _PageHomeNumberState();
}

class _PageHomeNumberState extends State<PageHomeNumber> {
  AudioPlayer audioPlayer = AudioPlayer();
  String image = NumberImages.ten;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: AppBarHomePage("Number"),
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(19),
          ),
          border: Border.all(
            width: 3,
          ),
        ),
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            WidgetImage(
              /// Widget image
              image: image,
            ),
            const Divider(
              height: 0,
              thickness: 2,
              color: Colors.black,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      BtonAnimals(
                        icon: NumberIcon.one,
                        color: const Color(0xff62BCDE),
                        titel: "one",
                        onClick: () {
                          image = NumberImages.one;
                          audioPlayer.setSourceAsset(NumberAudio.one);
                          audioPlayer.resume();
                          setState(() {});
                        },
                      ),
                      BtonAnimals(
                        color: const Color(0xffF0B035),
                        icon: NumberIcon.two,
                        titel: "two",
                        onClick: () {
                          image = NumberImages.two;
                          audioPlayer.setSourceAsset(NumberAudio.two);
                          audioPlayer.resume();

                          setState(() {});
                        },
                      ),
                      BtonAnimals(
                        color: const Color(0xffD65A5A),
                        icon: NumberIcon.three,
                        titel: "three",
                        onClick: () {
                          image = NumberImages.three;
                          audioPlayer.setSourceAsset(NumberAudio.three);
                          audioPlayer.resume();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      BtonAnimals(
                        color: const Color(0xff64B66C),
                        icon: NumberIcon.four,
                        titel: "four",
                        onClick: () {
                          image = NumberImages.four;
                          audioPlayer.setSourceAsset(NumberAudio.four);
                          audioPlayer.resume();
                          setState(() {});
                        },
                      ),
                      BtonAnimals(
                        color: const Color(0xffD65A5A),
                        icon: NumberIcon.five,
                        titel: "five",
                        onClick: () {
                          image = NumberImages.five;
                          audioPlayer.setSourceAsset(NumberAudio.five);
                          audioPlayer.resume();
                          setState(() {});
                        },
                      ),
                      BtonAnimals(
                        color: const Color(0xff64B66C),
                        icon: NumberIcon.six,
                        titel: "six",
                        onClick: () {
                          image = NumberImages.six;
                          audioPlayer.setSourceAsset(NumberAudio.six);
                          audioPlayer.resume();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      BtonAnimals(
                        color: const Color(0xff62BCDE),
                        icon: NumberIcon.seven,
                        titel: "seven",
                        onClick: () {
                          image = NumberImages.seven;
                          audioPlayer.setSourceAsset(NumberAudio.seven);
                          audioPlayer.resume();
                          setState(() {});
                        },
                      ),
                      BtonAnimals(
                        color: const Color(0xffF0B035),
                        icon: NumberIcon.eight,
                        titel: "eight",
                        onClick: () {
                          image = NumberImages.eight;
                          audioPlayer.setSourceAsset(NumberAudio.eight);
                          audioPlayer.resume();
                          setState(() {});
                        },
                      ),
                      BtonAnimals(
                        color: const Color(0xffFF65C5),
                        icon: NumberIcon.nine,
                        titel: "nine",
                        onClick: () {
                          image = NumberImages.nine;
                          audioPlayer.setSourceAsset(NumberAudio.nine);
                          audioPlayer.resume();

                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
