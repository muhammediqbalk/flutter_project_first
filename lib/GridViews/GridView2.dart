import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView2(),
  ));
}

class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlueAccent,
            child: Center(
              child: Text(
                "User $index",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}
