import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nmb {
  String image;
  String englishNumber;
  String japaneseNumber;
  final String audio;
  Nmb(
      {this.audio,
        @required this.image,
      @required this.englishNumber,
      @required this.japaneseNumber});
}

List<Nmb> numberList = [
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_one.png",
      englishNumber: "one",
      japaneseNumber: "ichi"),
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_two.png",
      englishNumber: "number_two",
      japaneseNumber: "Ni"),
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_three.png",
      englishNumber: "three",
      japaneseNumber: "San"),
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_four.png",
      englishNumber: "four",
      japaneseNumber: "Shi"),
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_five.png",
      englishNumber: "five",
      japaneseNumber: "Go"),
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_six.png",
      englishNumber: "six",
      japaneseNumber: "roku"),
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_seven.png",
      englishNumber: "seven",
      japaneseNumber: "nana"),
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_eight.png",
      englishNumber: "eight",
      japaneseNumber: "hachi"),
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_nine.png",
      englishNumber: "nine",
      japaneseNumber: "kyū"),
  Nmb(
      audio:"number_seven_sound.mp3",
      image: "images/numbers/number_ten.png",
      englishNumber: "ten",
      japaneseNumber: "jū"),
];

// ignore: must_be_immutable
class Arkam extends StatefulWidget {
  @override
  _ArkamState createState() => _ArkamState();
}

class _ArkamState extends State<Arkam> {
  Nmb num1 = Nmb(
      englishNumber: "one",
      japaneseNumber: "inciban",
      image: "images/numbers/number_one.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Toku"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.orange,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.amberAccent,
                        child: Image(
                          image: AssetImage(numberList[index].image),
                        ),
                      ),
                      Container(
                        width: 70,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(numberList[index].japaneseNumber,
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(numberList[index].englishNumber,
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () {
                                  AudioCache player = AudioCache();
                                  player.play(numberList[index].audio);
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

//
//
//
