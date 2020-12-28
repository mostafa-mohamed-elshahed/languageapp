import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
 // ignore: camel_case_types
 class Lon {
   String image;
   String englishColor;
   String japaneseColor;
   final String audio;

Lon({
  this.audio,
  this.image,
  this.englishColor,
  this.japaneseColor,
}) ;
 }
List<Lon> listLon = [
  Lon(
    audio:"number_seven_sound.mp3",
    image: "images/colors/color_black.png",
    englishColor: "black",
    japaneseColor: "Kululli",
  ),
  Lon(
    audio:"number_seven_sound.mp3",
    image: "images/colors/color_brown.png",
    englishColor: "brown",
    japaneseColor: "takaakki",
  ),
  Lon(
    audio:"number_seven_sound.mp3",
    image: "images/colors/color_dusty_yellow.png",
    englishColor: "dusty yellow",
    japaneseColor: "topiise",
  ),
  Lon(
    audio:"number_seven_sound.mp3",
    image: "images/colors/color_gray.png",
    englishColor: "gray",
    japaneseColor: "topoppi",
  ),
  Lon(
    audio:"number_seven_sound.mp3",
    image: "images/colors/color_green.png",
    englishColor: "green",
    japaneseColor: "chokokki",
  ),
  Lon(
    audio:"number_seven_sound.mp3",
    image: "images/colors/color_mustard_yellow.png",
    englishColor: "mustard yellow",
    japaneseColor: "chiwiite",
  ),
  Lon(
    audio:"number_seven_sound.mp3",
    image: "images/colors/color_red.png",
    englishColor: "red",
    japaneseColor: "wetetti",
  ),

];
// ignore: camel_case_types, must_be_immutable
class Loon extends StatelessWidget {
   // ignore: non_constant_identifier_names
   Lon Lon1 = Lon(
     image: "images/colors/color_black.png",
     englishColor: "black",
     japaneseColor: "Kululli",
   );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.purple,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.amberAccent,
                        child: Image(
                          image: AssetImage(listLon[index].image),
                        ),
                      ),
                      Container(   width: 75,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(listLon[index].japaneseColor),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(listLon[index].englishColor)),
                            ],
                          ),),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () {
                                  AudioCache player = AudioCache();
                                  player.play(listLon[index].audio);
                                },
                                icon: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            );
          }),
    );
  }
}