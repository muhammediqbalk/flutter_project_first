

import 'package:flutter/material.dart';
import 'package:flutter_project_first/passing%20data%20between%20screen/Product%20details.dart';
import 'package:flutter_project_first/passing%20data%20between%20screen/dammy%20data.dart';

void main(){
  runApp(MaterialApp(
    home: ProductList(),
    debugShowCheckedModeBanner: false,
    routes: {
      "details" :(context) => ProductDetails(),
      // "Cart" : (context) => ListView(),
    },
  ));
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Products"),),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: products.map((e) => ListTile(
          leading: Image.asset(e["image"]),
          title: Text(e["name"]),
          onTap: ()=> gotodetails(context,e['id']),
        )).toList(),
      ),
    );
  }

  void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, "details", arguments: id);

  }
}
