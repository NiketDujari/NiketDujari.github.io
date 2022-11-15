import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:navya_bday/homePage.dart';

class IntroBanner extends StatefulWidget {
  @override
  _IntroBannerState createState() => _IntroBannerState();
}

class _IntroBannerState extends State<IntroBanner>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Animation animation2;
  AnimationController controller2;
  final player = AudioCache();

  @override
  void initState() {
    super.initState();
    startTime();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    controller2 = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: Color(0xffE50914), end: Colors.black)
        .animate(controller);
    animation2 = ColorTween(begin: Colors.black, end: Color(0xffE50914))
        .animate(controller2);
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  startTime() async {
    var duration = new Duration(seconds: 8);
    return new Timer(duration, route);
  }

  route() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 70),
          Center(
            child: TypewriterAnimatedTextKit(
              onFinished: () {
                controller2.forward();
                player.play('net.mp3');
                controller2.addListener(() {
                  setState(() {
                    print(controller2.value);
                  });
                });
              },
              text: ["   NAVYA'S"],
              isRepeatingAnimation: false,
              speed: Duration(milliseconds: 300),
              textStyle: TextStyle(
                  fontSize: 100,
                  fontFamily: 'Babas',
                  color: Color(0xffE50914),
                  fontWeight: FontWeight.w900),
            ),
          ),
          Center(
            child: Text(
              "B'DAY",
              style: TextStyle(
                  color: Color(0xffE50914).withOpacity(controller2.value),
                  fontSize: 80,
                  fontFamily: 'Babas',
                  fontWeight: FontWeight.w900),
            ),
          )
        ],
      ),
    );
  }
}
