import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview4(),
  ));
}

class Gridview4 extends StatelessWidget {
  const Gridview4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20),
          childrenDelegate:
              SliverChildBuilderDelegate((context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Image(
                        image: AssetImage(
                            "assets/images/1image.png"),
                      ),
                ),
              ))),
    );
  }
}
