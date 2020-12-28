import 'package:flutter/material.dart';
import 'package:languageapp/Number.dart';
import 'Colors.dart';
import 'Family.dart';
import 'Phrases.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Toku"),
      ),
      body: ListView(children: [ Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Arkam();
              }));
            },
            child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.orange,
                child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Numbers",style: TextStyle(
                          color: Colors.white
                      )),
                    ))),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Faamily();
              }));
            },
            child:  Container(
                width: double.infinity,
                height: 100,
                color: Colors.green,
                child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Family",style: TextStyle(
                          color: Colors.white
                      )),
                    ))),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Loon();
              }));
            },
            child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.purple,
                child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Colors",style: TextStyle(
                          color: Colors.white
                      )),
                    ))),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Phrases();
              }));
            },
            child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.lightBlueAccent,
                child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Phrases",style: TextStyle(
                          color: Colors.white
                      )),
                    ))),
          ),
        ],
      ),],

      ),
    );
  }
}