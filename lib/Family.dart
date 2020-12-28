import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
class Family {
  String image;
  String englishName;
  String japaneseName;
  final String audio;
  Family(
      {this.audio,
        @required this.image,
      @required this.englishName,
      @required this.japaneseName});
}

// ignore: non_constant_identifier_names
List<Family> FamilyList = [
  Family(
      audio:"number_seven_sound.mp3",
      image: "images/famliy/family_father.png",
      englishName: "father",
      japaneseName: "Otōsan"),
  Family(
      audio:"number_seven_sound.mp3",
      image: "images/famliy/family_mother.png",
      englishName: "mother",
      japaneseName: "Haha"),
  Family(
      audio:"number_seven_sound.mp3",
      image: "images/famliy/family_son.png",
      englishName: "son",
      japaneseName: "angsi"),
  Family(
      audio:"number_seven_sound.mp3",
      image: "images/famliy/family_daughter.png",
      englishName: "daughter",
      japaneseName: "tune"),
  Family(
      audio:"number_seven_sound.mp3",
      image: "images/famliy/family_older_brother.png",
      englishName: "older brother",
      japaneseName: "taachi"),
  Family(
      audio:"number_seven_sound.mp3",
      image: "images/famliy/family_younger_brother.png",
      englishName: "younger brother",
      japaneseName: "chalitti"),
  Family(
      audio:"number_seven_sound.mp3",
      image: "images/famliy/family_older_sister.png",
      englishName: "older sister",
      japaneseName: "tete"),
];

// ignore: must_be_immutable
class Faamily extends StatelessWidget {
  @override
  Family Family1 = Family(
      image: "images/famliy/family_father.png",
      englishName: "father",
      japaneseName: "Otōsan");
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Toku"),
      ),
      body: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.green,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.amberAccent,
                        child: Image(
                          image: AssetImage(FamilyList[index].image),
                        ),
                      ),
                      Container(  width: 75,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(FamilyList[index].japaneseName,style: TextStyle(
                                    color: Colors.white
                                )),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(FamilyList[index].englishName,style: TextStyle(
                                      color: Colors.white
                                  ))),
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
                                  player.play(FamilyList[index].audio);
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
                )
              ],
            );
          }),
    );
  }
}
