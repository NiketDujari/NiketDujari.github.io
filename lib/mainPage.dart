import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:navya_bday/videoPlayerPage.dart';
import 'package:url_launcher/url_launcher.dart';

// Shradha - https://www.youtube.com/watch?v=6Dad2f5k5z4&feature=youtu.be
// Mihir - https://www.youtube.com/watch?v=aWLslZfQ0y0&feature=youtu.be

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            height: 600,

            child: Stack(
              children: [
                Positioned(
                    child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent],
                      ).createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      "images/cover.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "  N",
                        style: TextStyle(
                            color: Color(0xffE50914),
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Babas',
                            fontSize: 60),
                      ),
                      Text(
                        "It's",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Your",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Birthday!         ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 120,
                    left: (MediaQuery.of(context).size.width) / 8.7,
                    child: BorderedText(
                      strokeWidth: 6,
                      strokeColor: Colors.black,
                      child: Text(
                        "Happy Birthday!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler',
                            color: Colors.red,
                            fontSize: 50),
                      ),
                    )),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  bottom: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Horror  •",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Irritating   •",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Comedy   •",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Cry baby   •",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Mad",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 30,
                    left: 15,
                    child: Text(
                      "Wishes by Forever",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 25),
                    ))
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoPlayer(
                                  "https://www.youtube.com/watch?v=p-K9YDne-kA&feature=youtu.be")));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.orange,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/shubhangi-wish.jpeg'),
                              radius: 68,
                            ),
                          ),
                          Positioned(
                              width: 150,
                              bottom: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BorderedText(
                                    strokeWidth: 5,
                                    strokeColor: Colors.black,
                                    child: Text(
                                      "Shubhu ",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent,
                                          fontFamily: 'Babas',
                                          fontSize: 37,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPlayer(
                                        "https://www.youtube.com/watch?v=aWLslZfQ0y0&feature=youtu.be")));
                          },
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.red,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/mihir-wish.jpeg'),
                              radius: 68,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                        Positioned(
                            width: 150,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 5,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "#MC307 ",
                                    style: TextStyle(
                                        color: CupertinoColors.white,
                                        fontFamily: 'Bangers',
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPlayer(
                                        "https://www.youtube.com/watch?v=FXfF0iRW3bk&feature=youtu.be")));
                          },
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.yellowAccent,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/muskaan-wish.jpeg'),
                              radius: 68,
                            ),
                          ),
                        ),
                        Positioned(
                            width: 150,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 5,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "Roomie ",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontFamily: 'Schyler',
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoPlayer(
                                  "https://www.youtube.com/watch?v=aOKtYjcjRYg&feature=youtu.be")));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/shreyoshee.jpeg'),
                              radius: 68,
                            ),
                          ),
                          Positioned(
                              width: 150,
                              bottom: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BorderedText(
                                    strokeWidth: 5,
                                    strokeColor: Colors.black,
                                    child: Text(
                                      "Shreyoshee ",
                                      style: TextStyle(
                                          color: Colors.tealAccent,
                                          fontFamily: 'Bangers',
                                          fontSize: 34,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoPlayer(
                                  "https://www.youtube.com/watch?v=4W9AG1Fah64&feature=youtu.be")));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.blue,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/Sanskriti-wish.jpeg'),
                              radius: 68,
                            ),
                          ),
                          Positioned(
                              width: 150,
                              bottom: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BorderedText(
                                    strokeWidth: 5,
                                    strokeColor: Colors.black,
                                    child: Text(
                                      "Sans ",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'Bangers',
                                          fontSize: 37,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPlayer(
                                        "https://www.youtube.com/watch?v=xSqmQvRFjkA&feature=youtu.be")));
                          },
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.red,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/sanskar-wish.jpeg'),
                              radius: 68,
                            ),
                          ),
                        ),
                        Positioned(
                            width: 150,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 5,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "Sanskar ",
                                    style: TextStyle(
                                        color: Colors.purpleAccent,
                                        fontFamily: 'Babas',
                                        fontSize: 37,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoPlayer(
                                  "https://www.youtube.com/watch?v=g6nGDmnTwfY&feature=youtu.be")));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.green,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/aku-wish.jpeg'),
                              radius: 68,
                            ),
                          ),
                          Positioned(
                              width: 150,
                              bottom: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BorderedText(
                                    strokeWidth: 3,
                                    strokeColor: Colors.black,
                                    child: Text(
                                      "AKKU ",
                                      style: TextStyle(
                                          color: Colors.pink,
                                          fontFamily: 'Schyler',
                                          fontSize: 37,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoPlayer(
                                  "https://www.youtube.com/watch?v=Ujyhv2GcQyY")));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/nik-wish.jpeg'),
                              radius: 68,
                            ),
                          ),
                          Positioned(
                              width: 150,
                              bottom: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BorderedText(
                                    strokeWidth: 5,
                                    strokeColor: Colors.black,
                                    child: Text(
                                      "N I K ",
                                      style: TextStyle(
                                          color: Colors.yellowAccent,
                                          fontFamily: 'Bangers',
                                          fontSize: 37,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Text(
            "     My List",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://manishmalhotra.in/product-category/women/lehengas/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/lehenga.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            bottom: 20,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Lehenga",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 10,
                            child: Text(
                              "   by Manish Malhotra",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
                // https://www.nykaa.com/huda-beauty-the-new-nude-eyeshadow-palette/p/421571?ptype=product&productId=421571&skuId=421571&pps=5
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.nykaa.com/huda-beauty-the-new-nude-eyeshadow-palette/p/421571?ptype=product&productId=421571&skuId=421571&pps=5';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/huda.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            bottom: 25,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Eye-shadow palette",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 10,
                            child: Text(
                              "      by Huda Beauty",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.maccosmetics.com/products/13854/Products/Makeup/Lips/Lipstick';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    // onTap: launchURL(
                    //     "https://www.maccosmetics.com/products/13854/Products/Makeup/Lips/Lipstick"),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/mac.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            bottom: 25,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 5,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "Lipstick",
                                    style: TextStyle(
                                        fontFamily: "Bangers",
                                        color: Colors.pinkAccent,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 10,
                            child: BorderedText(
                              strokeWidth: 4,
                              strokeColor: Colors.black,
                              child: Text(
                                "           by M.A.C",
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.nykaa.com/kay-beauty-eye-stylist-liquid-eyeliner/p/692836?skuId=692832';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    // onTap: launchURL(
                    //     "https://www.nykaa.com/kay-beauty-eye-stylist-liquid-eyeliner/p/692836?skuId=692832"),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/kay.webp'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            bottom: 25,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 3,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "Liquid- Eyeliner",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Schyler",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 10,
                            child: BorderedText(
                              strokeWidth: 3,
                              strokeColor: Colors.black,
                              child: Text(
                                "        by Kay Beauty",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.nykaa.com/estee-lauder-advanced-night-repair-synchronized-multi-recovery-complex/p/833282?gclid=CjwKCAjww5r8BRB6EiwArcckC_7zXXTLFW_fsxHvv8mNNpvj1Wh48U7A5Iesh49UofOvdPa9STQ_1hoCB5EQAvD_BwE&ptype=product&skuId=833282&ef_id=CjwKCAjww5r8BRB6EiwArcckC_7zXXTLFW_fsxHvv8mNNpvj1Wh48U7A5Iesh49UofOvdPa9STQ_1hoCB5EQAvD_BwE:G:s&s_kwcid=AL!599!3!383869122205!!!u!294680686006!&utm_source=GooglePaid&utm_medium=PLA&utm_campaign=PLA_FULLSITE_GOALOPTIMISED';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    // onTap: launchURL(
                    //     "https://www.nykaa.com/estee-lauder-advanced-night-repair-synchronized-multi-recovery-complex/p/833282?gclid=CjwKCAjww5r8BRB6EiwArcckC_7zXXTLFW_fsxHvv8mNNpvj1Wh48U7A5Iesh49UofOvdPa9STQ_1hoCB5EQAvD_BwE&ptype=product&skuId=833282&ef_id=CjwKCAjww5r8BRB6EiwArcckC_7zXXTLFW_fsxHvv8mNNpvj1Wh48U7A5Iesh49UofOvdPa9STQ_1hoCB5EQAvD_BwE:G:s&s_kwcid=AL!599!3!383869122205!!!u!294680686006!&utm_source=GooglePaid&utm_medium=PLA&utm_campaign=PLA_FULLSITE_GOALOPTIMISED"),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/estee.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            bottom: 25,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 3,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "Night Repair",
                                    style: TextStyle(
                                        color: Colors.yellowAccent,
                                        fontFamily: "Babas",
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 10,
                            child: BorderedText(
                              strokeWidth: 3,
                              strokeColor: Colors.black,
                              child: Text(
                                "        by Estee Lauder",
                                style: TextStyle(
                                    color: Colors.yellowAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () async {
                      const url = 'https://shop.farsali.com/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    // onTap: launchURL("https://shop.farsali.com/"),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/farsali.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            bottom: 25,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 3,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "Face Serum",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 10,
                            child: BorderedText(
                              strokeWidth: 3,
                              strokeColor: Colors.black,
                              child: Text(
                                "           by fARSÁLI",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.thebodyshop.in/?utm_source=google&utm_medium=cpc&gclid=CjwKCAjww5r8BRB6EiwArcckC2GXDOCRwqtzSZOHTFipVRMzX3HObP9Bd-b6GTALSTp5syWHjZ-g-hoC1HEQAvD_BwE';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    // onTap: launchURL(
                    //     "https://www.thebodyshop.in/?utm_source=google&utm_medium=cpc&gclid=CjwKCAjww5r8BRB6EiwArcckC2GXDOCRwqtzSZOHTFipVRMzX3HObP9Bd-b6GTALSTp5syWHjZ-g-hoC1HEQAvD_BwE"),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/body.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            top: 10,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Skin Essentials",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        Positioned(
                            top: 30,
                            child: Text(
                              "           by Body Shop",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Text(
            "     Top 10",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
          ),
          SizedBox(
            height: 0,
          ),
          Container(
            height: 220.0,
            color: Colors.black,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                          height: 190,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/floral.jpeg"),
                                fit: BoxFit.cover),
                            color: Colors.black,
                            border: Border.all(color: Color(0xffd8d3cd)),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 100,
                          right: 87,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 130,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff282C35)),
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                            height: 190,
                            width: 130,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffd8d3cd)),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/ghagra.jpeg"),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                            )),
                      ),
                      Positioned(
                          top: 100,
                          right: 77,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "2",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                            height: 190,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffd8d3cd)),
                              image: DecorationImage(
                                  image: AssetImage("images/bday.jpeg"),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                            )),
                      ),
                      Positioned(
                          top: 100,
                          right: 76,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "3",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                            height: 190,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/back2school.jpeg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              border: Border.all(color: Color(0xffd8d3cd)),
                            )),
                      ),
                      Positioned(
                          top: 100,
                          right: 77,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "4",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                            height: 190,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/Horror.jpeg"),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                              border: Border.all(color: Color(0xffd8d3cd)),
                            )),
                      ),
                      Positioned(
                          top: 100,
                          right: 75,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "5",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                            height: 190,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage("images/suit.jpeg"),
                                  fit: BoxFit.cover),
                              border: Border.all(color: Color(0xffd8d3cd)),
                            )),
                      ),
                      Positioned(
                          top: 100,
                          right: 75,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "6",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                            height: 190,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage("images/yoga.jpeg"),
                                  fit: BoxFit.cover),
                              border: Border.all(color: Color(0xffd8d3cd)),
                            )),
                      ),
                      Positioned(
                          top: 100,
                          right: 75,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "7",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                            height: 190,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage("images/saree.jpeg"),
                                  fit: BoxFit.cover),
                              border: Border.all(color: Color(0xffd8d3cd)),
                            )),
                      ),
                      Positioned(
                          top: 100,
                          right: 77,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "8",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                            height: 190,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage("images/formal.jpeg"),
                                  fit: BoxFit.cover),
                              border: Border.all(color: Color(0xffd8d3cd)),
                            )),
                      ),
                      Positioned(
                          top: 100,
                          right: 75,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "9",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 100,
                  width: 155,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Container(
                            height: 190,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/haldi.jpeg"),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                              border: Border.all(color: Color(0xffd8d3cd)),
                            )),
                      ),
                      Positioned(
                          top: 100,
                          right: 88,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "1",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          )),
                      Positioned(
                          top: 100,
                          right: 40,
                          child: BorderedText(
                            strokeWidth: 6,
                            strokeColor: Colors.white,
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 130,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff282C35),
                              ),
                            ),
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Wishes by Homies",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
          ),
          SizedBox(height: 20),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoPlayer(
                                  "https://www.youtube.com/watch?v=mC8yxUGQc3M&feature=youtu.be")));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.orange,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/tanya.jpeg'),
                              radius: 68,
                            ),
                          ),
                          Positioned(
                              width: 150,
                              bottom: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BorderedText(
                                    strokeWidth: 5,
                                    strokeColor: Colors.black,
                                    child: Text(
                                      "TANYA ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Bangers',
                                          fontSize: 47,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPlayer(
                                        "https://www.youtube.com/watch?v=6Dad2f5k5z4&feature=youtu.be")));
                          },
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.pinkAccent,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/shradha.jpeg'),
                              radius: 68,
                              backgroundColor: Colors.pinkAccent,
                            ),
                          ),
                        ),
                        Positioned(
                            width: 150,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 5,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "SHRADHA ",
                                    style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontFamily: 'Babas',
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPlayer(
                                        "https://www.youtube.com/watch?v=-JjaHIh0HyA&feature=youtu.be")));
                          },
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.red,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/anwesha.jpeg'),
                              radius: 68,
                            ),
                          ),
                        ),
                        Positioned(
                            width: 150,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 5,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "ANWESHA ",
                                    style: TextStyle(
                                        color: Colors.yellowAccent,
                                        fontFamily: 'Schyler',
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoPlayer(
                                  "https://www.youtube.com/watch?v=gW_eFVYH_Hs&feature=youtu.be")));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.blue,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/adi.jpeg'),
                              radius: 68,
                            ),
                          ),
                          Positioned(
                              width: 150,
                              bottom: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BorderedText(
                                    strokeWidth: 5,
                                    strokeColor: Colors.black,
                                    child: Text(
                                      "ADI ",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent,
                                          fontFamily: 'Babas',
                                          fontSize: 47,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPlayer(
                                        "https://www.youtube.com/watch?v=MoENJ_ILE6k&feature=youtu.be")));
                          },
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.yellowAccent,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/sidharth.jpeg'),
                              radius: 68,
                            ),
                          ),
                        ),
                        Positioned(
                            width: 150,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 5,
                                  strokeColor: Colors.black,
                                  child: Text(
                                    "SIDDHARTH  ",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontFamily: 'Schyler',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPlayer(
                                        "https://www.youtube.com/watch?v=IruysBW5VqM&feature=youtu.be")));
                          },
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.red,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/chirag.jpeg'),
                              radius: 68,
                            ),
                          ),
                        ),
                        Positioned(
                            width: 150,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 5,
                                  strokeColor: Colors.white,
                                  child: Text(
                                    "CHIRAG ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Bangers',
                                        fontSize: 37,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 2),
                //   child: Container(
                //     height: 150,
                //     width: 150,
                //     child: Stack(
                //       children: [
                //         CircleAvatar(
                //           radius: 70,
                //           backgroundColor: Colors.green,
                //           child: CircleAvatar(
                //             backgroundImage: AssetImage('images/aku-wish.jpeg'),
                //             radius: 68,
                //           ),
                //         ),
                //         Positioned(
                //             width: 150,
                //             bottom: 10,
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 BorderedText(
                //                   strokeWidth: 3,
                //                   strokeColor: Colors.black,
                //                   child: Text(
                //                     "DEVANSH ",
                //                     style: TextStyle(
                //                         color: Colors.greenAccent,
                //                         fontFamily: 'Schyler',
                //                         fontSize: 32,
                //                         fontWeight: FontWeight.bold),
                //                   ),
                //                 ),
                //               ],
                //             ))
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Text(
            "  Weird shows you may like",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/italian.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 20,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BorderedText(
                                strokeWidth: 3,
                                strokeColor: Colors.white,
                                child: Text(
                                  "365",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Schyler",
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          bottom: 10,
                          child: BorderedText(
                            strokeWidth: 2,
                            strokeColor: Colors.white,
                            child: Text(
                              "                 DAYS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/richaunty.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 10,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rich Aunties",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 34,
                                    fontFamily: "Babas",
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/quarantine.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 10,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BorderedText(
                                strokeWidth: 5,
                                strokeColor: Colors.black,
                                child: Text(
                                  "Quarantine",
                                  style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontSize: 34,
                                      fontFamily: "Bangers",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/eyesnose.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 10,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BorderedText(
                                strokeWidth: 5,
                                strokeColor: Colors.black,
                                child: Text(
                                  "The Martian",
                                  style: TextStyle(
                                      color: Colors.orangeAccent,
                                      fontSize: 32,
                                      fontFamily: "Babas",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/bald.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 25,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BorderedText(
                                strokeWidth: 5,
                                strokeColor: Colors.black,
                                child: Text(
                                  "Br",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 32,
                                      fontFamily: "Babas",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              BorderedText(
                                strokeWidth: 5,
                                strokeColor: Colors.black,
                                child: Text(
                                  "eaking",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: "Babas",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          bottom: 0,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BorderedText(
                                strokeWidth: 5,
                                strokeColor: Colors.black,
                                child: Text(
                                  "Ba",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 32,
                                      fontFamily: "Babas",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              BorderedText(
                                strokeWidth: 5,
                                strokeColor: Colors.black,
                                child: Text(
                                  "d",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: "Babas",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/13reasons.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          top: 15,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "13 REASONS WHY",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/vampire.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 35,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BorderedText(
                                strokeWidth: 3,
                                strokeColor: Colors.black,
                                child: Text(
                                  "the  ",
                                  style: TextStyle(
                                      color: Colors.amberAccent,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              BorderedText(
                                strokeWidth: 3,
                                strokeColor: Colors.black,
                                child: Text(
                                  "V",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              BorderedText(
                                strokeColor: Colors.black,
                                strokeWidth: 3,
                                child: Text(
                                  "ampire",
                                  style: TextStyle(
                                      color: Colors.amberAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          bottom: 5,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BorderedText(
                                strokeWidth: 3,
                                strokeColor: Colors.black,
                                child: Text(
                                  "   D",
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 33,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              BorderedText(
                                strokeWidth: 3,
                                strokeColor: Colors.black,
                                child: Text(
                                  "iaries",
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/Dog.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 55,
                          left: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "MAN'S",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Babas",
                                    fontSize: 33,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                      Positioned(
                          bottom: 27,
                          left: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "BEST",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Babas",
                                    fontSize: 33,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                      Positioned(
                          bottom: 0,
                          left: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "FRIEND",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Babas",
                                    fontSize: 33,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/fast.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 35,
                          left: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BorderedText(
                                strokeWidth: 5,
                                strokeColor: Colors.black,
                                child: Text(
                                  "FAST &",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Bangers",
                                      fontSize: 33,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          bottom: 7,
                          left: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BorderedText(
                                strokeWidth: 5,
                                strokeColor: Colors.black,
                                child: Text(
                                  "FURIOUS",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Bangers",
                                      fontSize: 33,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Text(
            " Family shows you can't miss",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/family1.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/family2.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/family10.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/family3.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/family6.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/family7.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/family4.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/family8.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/family9.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Text(
            "  Shows that'll make you cry",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/cry2.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/cry1.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/cr6.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/cry5.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/cry7.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/cry3.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/cry4.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Text(
            "  Cause you've watched F.R.I.E.N.D.S",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 22),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f11.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f1.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f4.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f5.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f3.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f6.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f7.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f13.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('images/f12.jpeg'),
                            fit: BoxFit.contain)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f14.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f10.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('images/f9.jpeg'),
                            fit: BoxFit.contain)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f2.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/f8.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
