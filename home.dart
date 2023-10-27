import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double cardWidth = screenWidth * 0.4; // 80% of screen width
    double cardHeight = screenHeight * 0.4; // 40% of screen height

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight*0.2,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 10),
                    child: Container(
                      width: 200,
                      height: screenHeight*0.04,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight*0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: screenWidth*0.98,
                      height: screenHeight*0.06,
                      color: Colors.greenAccent,
                    ),
                  )
                ],
              ),
              ),
            SizedBox(
              height: screenHeight*0.1,
            ),
            Container(
              height: screenHeight*0.2,
              width: screenWidth,
              color: Colors.red,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Transform.translate(
                      child: Container(
                        width: 200,
                        height: screenHeight*0.05,
                        color: Colors.grey,
                      ),
                      offset: Offset(0,-screenHeight*0.02),
                    ),
                  ),
                  Positioned(
                    top: screenHeight*0.09,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                    width: screenWidth*0.95,
                    height: screenHeight*0.06,
                    color: Colors.greenAccent,
                  ),
                      ))
                ],
              ),
              ),
            ],
        ),
      )
    );
  }
}