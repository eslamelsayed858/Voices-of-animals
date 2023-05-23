import 'package:animals_update/constant/icon_animals.dart';
import 'package:animals_update/constant/image_animals.dart';
import 'package:animals_update/widgets/elevated_button.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../constant/audio_animals.dart';
import '../constant/name_animals.dart';
import '../widgets/app_bar_home_page.dart';
import '../widgets/widget_image.dart';

class PageHomeAnimals extends StatefulWidget {
  const PageHomeAnimals({super.key});

  @override
  State<PageHomeAnimals> createState() => _PageHomeAnimalsState();
}

class _PageHomeAnimalsState extends State<PageHomeAnimals> {
  String image = AnimalsImage.animals;
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarHomePage(
          AnimalsName.animals,
        ),
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
                          titel: AnimalsName.lion,
                          icon: AnimalsIcon.lion,
                          onClick: () {
                            image = AnimalsImage.lion;
                            audioPlayer.setSourceAsset(AnimalsAudio.lion);
                            audioPlayer.resume();
                            setState(() {});
                          },
                        ),
                        BtonAnimals(
                          titel: AnimalsName.cheetah,
                          icon: AnimalsIcon.cheetah,
                          color: Colors.orange,
                          onClick: () {
                            image = AnimalsImage.cheetah;
                            audioPlayer.setSourceAsset(AnimalsAudio.cheetah);
                            audioPlayer.resume();
                            setState(() {});
                          },
                        ),
                        BtonAnimals(
                          onClick: () {
                            image = AnimalsImage.wolf;
                            audioPlayer.setSourceAsset(AnimalsAudio.wolf);
                            audioPlayer.resume();
                            setState(() {});
                          },
                          titel: AnimalsName.wolf,
                          icon: AnimalsIcon.wolf,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BtonAnimals(
                          titel: AnimalsName.elephant,
                          icon: AnimalsIcon.elephant,
                          color: Colors.orange,
                          onClick: () {
                            image = AnimalsImage.elephant;
                            audioPlayer.setSourceAsset(AnimalsAudio.elephant);
                            audioPlayer.resume();
                            setState(() {});
                          },
                        ),
                        BtonAnimals(
                          titel: AnimalsName.giraffe,
                          icon: AnimalsIcon.giraffe,
                          onClick: () {
                            image = AnimalsImage.giraffe;
                            audioPlayer.setSourceAsset(AnimalsAudio.giraffe);
                            audioPlayer.resume();
                            setState(() {});
                          },
                        ),
                        BtonAnimals(
                          onClick: () {
                            image = AnimalsImage.crocodile;
                            audioPlayer.setSourceAsset(AnimalsAudio.crocodile);
                            audioPlayer.resume();
                            setState(() {});
                          },
                          titel: AnimalsName.crocodile,
                          color: Colors.orange,
                          icon: AnimalsIcon.crocodile,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BtonAnimals(
                          titel: AnimalsName.cat,
                          icon: AnimalsIcon.cat,
                          onClick: () {
                            image = AnimalsImage.cat;
                            audioPlayer.setSourceAsset(AnimalsAudio.cat);
                            audioPlayer.resume();
                            setState(() {});
                          },
                        ),
                        BtonAnimals(
                          titel: AnimalsName.dog,
                          icon: AnimalsIcon.dog,
                          color: Colors.orange,
                          onClick: () {
                            image = AnimalsImage.dog;
                            audioPlayer.setSourceAsset(AnimalsAudio.dog);
                            audioPlayer.resume();
                            setState(() {});
                          },
                        ),
                        BtonAnimals(
                          onClick: () {
                            image = AnimalsImage.parrot;
                            audioPlayer.setSourceAsset(AnimalsAudio.parrot);
                            audioPlayer.resume();
                            setState(() {});
                          },
                          titel: AnimalsName.parrot,
                          icon: AnimalsIcon.parrot,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
