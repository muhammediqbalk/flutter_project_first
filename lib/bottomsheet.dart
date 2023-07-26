import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// to perform event of gestures we use Gesture detector/ inkwell

void main(){
  runApp(MaterialApp(
    home: BottomSheett(),
  ));
}

class BottomSheett extends StatelessWidget {
  const BottomSheett({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onLongPress: (){
            showSheet(context);
          },
            child: Image.asset("assets/images/1image.png")),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.copy),
              title: Text("Copy"),
            ),
            ListTile(
              // leading: Icon(Icons.copy),
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
              title: Text("WhatsApp"),
            ),
            ListTile(
              // leading: Icon(Icons.copy),
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
              title: Text("Copy"),
            ),
          ],
        ),
      );
    });
  }
}
