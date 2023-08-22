import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: firstpage(),));
}

class firstpage extends StatelessWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(child: Column(
              children: [
                Text("Hello there!", style: GoogleFonts.gabriela(fontSize: 50,color: Colors.black87),),

                Text("Automatic identity verification which enable you to verify your identity",
                  style: GoogleFonts.gabriela(fontSize: 10,color: Colors.black87),),
                Image.asset("assets/icons/office women.png",
                  alignment: Alignment.center,height: 200,width: 200,),
                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: ElevatedButton(
                        onPressed: (){}, child: Text("Login"),

                      ),
                    ),

                    ElevatedButton(onPressed: (){}, child: Text("Signup"),),


                  ],

                ),

              ]
          ),),)

        );


    }
}