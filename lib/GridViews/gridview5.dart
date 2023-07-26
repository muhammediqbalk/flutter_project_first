import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview5(),
  ));
}

class Gridview5 extends StatelessWidget {
  const Gridview5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 70,
        // children: [],
        children: List.generate(
            25,
            (index) => Card(
                  child: Center(
                    child: Icon(
                      Icons.account_balance,
                      size: 60,
                    ),
                  ),
                )),
      ),
    );
  }
}
