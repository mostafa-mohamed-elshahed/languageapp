import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:languageapp/HomePage.dart';
import 'package:audioplayers/audio_cache.dart';

main() {
  runApp(languageapp());
}

// ignore: camel_case_types
class languageapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}


