import 'package:flutter/material.dart';
import 'package:flutter_project_first/loginpage.dart';
import 'package:flutter_project_first/splash%20Screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main (){
  runApp(const MaterialApp(
    home: OnBoarding(),
  ));
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
        fullScreen: true,
        titleTextStyle: TextStyle(
            color: Colors.purple,
            fontStyle: FontStyle.italic,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.pink),
        imagePadding: EdgeInsets.all(20),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.orange,
            Colors.deepOrange,
            Colors.red,
            Colors.redAccent
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )));
    return IntroductionScreen(
      
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          image: Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/login man.jpg"),
          ),
          title: "First Page",
          body:
              "Choosing the best betting app in India can be a daunting task. Luckily, our team of experts has meticulously reviewed and assessed the top sports gambling apps, providing 100% honest and unsponsored reviews.",
        ),
        PageViewModel(
          title: "Second Page",
          body:
              "Choosing the best betting app in India can be a daunting task. Luckily, our team of experts has meticulously reviewed and assessed the top sports gambling apps, providing 100% honest and unsponsored reviews.",
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Third Page",
          body:
              "Choosing the best betting app in India can be a daunting task. Luckily, our team of experts has meticulously reviewed and assessed the top sports gambling apps, providing 100% honest and unsponsored reviews.",
        ),
      ],
      onDone: ()=>  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage())),
      onSkip: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SplashPage())),
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: const Text("Continue"),
      dotsDecorator: DotsDecorator(
        size: const Size(10, 10),
        color: Colors.black,
        activeSize: const Size(25, 10),
        activeColor: Colors.red,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),),
      ),
    );
  }
}
