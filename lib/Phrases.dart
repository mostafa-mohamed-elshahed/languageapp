import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Phrasess {
  String englishPhrases;
  String japanesePhrases;
  final String audio;
  Phrasess({
    this.audio,
    this.englishPhrases,
    this.japanesePhrases,
  });
}

// ignore: non_constant_identifier_names
List<Phrasess> ListPhrasess = [
  Phrasess(
      englishPhrases: "Where are you going",
      audio: "number_seven_sound.mp3",
      japanesePhrases: "minto wuksus"),
  Phrasess(
      englishPhrases: "What is your name",
      audio: "number_seven_sound.mp3",
      japanesePhrases: "tinna oyaaena"),
  Phrasess(
      englishPhrases: "My name is ",
      audio: "number_seven_sound.mp3",
      japanesePhrases: "oyaaset"),
  Phrasess(
      englishPhrases: "How are you Feeling",
      audio: "number_seven_sound.mp3",
      japanesePhrases: "michaksas"),
  Phrasess(
      englishPhrases: "i'm feeling good",
      audio: "number_seven_sound.mp3",
      japanesePhrases: "kuchi achit"),
  Phrasess(
      englishPhrases: "Are you coming",
      audio: "number_seven_sound.mp3",
      japanesePhrases: "aanas'aa"),
  Phrasess(
      englishPhrases: "Yes , i'm coming",
      audio: "number_seven_sound.mp3",
      japanesePhrases: "haa'aanam"),
];

// ignore: must_be_immutable
class Phrases extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Phrasess Phrasess1 = Phrasess(
      englishPhrases: "Where are you going", japanesePhrases: "minto wuksus");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Toku"),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.lightBlueAccent,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(
                                  ListPhrasess[index].englishPhrases,
                                  style: TextStyle(color: Colors.white),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(ListPhrasess[index].japanesePhrases,
                                  style: TextStyle(color: Colors.white)),
                            ),
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
                                  player.play(ListPhrasess[index].audio);
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
