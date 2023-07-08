import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginpage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
  ));
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return LoginPage();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill, // to fit the image to the screen
            image: AssetImage("assets/images/bsgrount.jpg"),
          ),
        ),
        child: Center(
          child: Column(
            // for colum children will pl
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.favorite,color: Colors.red,size: 40,),
              Image.asset(
                "assets/images/1image.png",
                height: 200,
                width: 200,
              ),
              Text(
                "My Application",
                style: GoogleFonts.pacifico(
                    fontSize: 50,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
