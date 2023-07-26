import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView3(),
  ));
}

class GridView3 extends StatelessWidget {
  const GridView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 30,
        mainAxisSpacing: 10,
        children: List.generate(
            15,
            (index) => Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Image.asset(
                          "assets/icons/4619624_food_fruit_fruits_pineapple_icon.png"),
                      Text("painapile",style: TextStyle(fontSize: 20,color: Colors.deepOrange),)
                    ],
                  ),
                )),
      ),
    );
  }
}
