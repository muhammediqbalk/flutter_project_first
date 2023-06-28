import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){               //to run program
  runApp(                 // to attach the widget tree to the ui
      const MaterialApp( // default theme of our app (multiplatform support)
        debugShowCheckedModeBanner: false, // to remove debug badge
    home: FirstPage (), //initial screen of our app , (home must be a widget it may be stateless /statefull)
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  //stateless mean firstpage donot undergo any state change
  @override
  Widget build(BuildContext context) {    // to create a widget tree (Build context -> to Monitor the widget in the)
    return   Scaffold(
      backgroundColor: Colors.red,  // to set a single color to the entire screen
    //   appBar: AppBar(
    // centerTitle: true,
    //     title:  const Text("Hello",style:TextStyle(fontSize:20,color:Colors.white),
    // ),
    //   ),
      body:   Container(
        decoration:  BoxDecoration(
          // image: DecorationImage(
            // fit: BoxFit.fill,     // to fit the image to the screen
      // image: NetworkImage("https://images.unsplash.com/photo-1687556510500-a4345d52f0e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
      //     image: AssetImage("assets/images/bsgrount.jpg"),
          gradient: LinearGradient(colors: [
            Colors.green,
            Colors.lightGreen,
            Colors.lightGreenAccent,
            Colors.lightBlue,
          ],
              begin:Alignment.bottomRight,end: Alignment.topLeft )
          ),
      child: Center(
          child: Column(  // for colum children will pl
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.favorite,color: Colors.red,size: 40,),
              Image.asset("assets/images/1image.png",height: 200,width: 200,),
              // Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
               Text(
                "My Application",
                // style: TextStyle(fontSize: 50,color: Colors.brown,fontWeight: FontWeight.bold),
                style: GoogleFonts.pacifico(fontSize: 50,color: Colors.blue,fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}