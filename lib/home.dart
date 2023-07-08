import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Home",
          style: GoogleFonts.dancingScript(fontSize: 25, color: Colors.green),
        ),
      ),
      body: ListView(
        children: [
          const Center(child: Text("Fruits")),
          Card(
            child: ListTile(
              leading: Image.asset("assets/icons/753489_coco_icon.png"),
              title: Text("Kiwi"),
              subtitle: Text("\$100"),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                  "assets/icons/4619622_food_fruit_fruits_grapes_green grapes_icon.png"),
              title: Text("Grape "),
              subtitle: Text("\$100"),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                  "assets/icons/4619624_food_fruit_fruits_pineapple_icon.png"),
              title: Text("Pineapple "),
              subtitle: Text("\$100"),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                  "assets/icons/4619631_food_fruit_fruits_peach_icon.png"),
              title: Text("Apple"),
              subtitle: Text("\$100"),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                  "assets/icons/4619635_food_fruit_fruits_watermelon_icon.png"),
              title: Text("Watermelon "),
              subtitle: Text("\$100"),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                  "assets/icons/4619636_food_fruit_fruits_mango_icon.png"),
              title: Text("Mango"),
              subtitle: Text("\$100"),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}
