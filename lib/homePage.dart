import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:navya_bday/mainPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "NAVYA",
            style:
                TextStyle(color: Colors.red, fontFamily: 'Babas', fontSize: 40),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Who's Birthday is it today?",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          color: Colors.red,
                          child: Center(
                              child: Text(
                            "N",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50),
                          )),
                        ),
                        Text(
                          "Hap",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          color: Colors.yellowAccent,
                          child: Center(
                              child: Text(
                            "A",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50),
                          )),
                        ),
                        Text(
                          "py",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          color: Colors.greenAccent,
                          child: Center(
                              child: Text(
                            "V",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50),
                          )),
                        ),
                        Text(
                          "Bir",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          color: Colors.purple,
                          child: Center(
                              child: Text(
                            "Y",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50),
                          )),
                        ),
                        Text(
                          "th",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          color: Colors.pink,
                          child: Center(
                              child: Text(
                            "A",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50),
                          )),
                        ),
                        Text(
                          "day",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/profile.jpeg'),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Navya!",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
