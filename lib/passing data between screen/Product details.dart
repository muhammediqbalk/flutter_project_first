import 'package:flutter/material.dart';
import 'package:flutter_project_first/passing%20data%20between%20screen/dammy%20data.dart';

class ProductDetails extends StatelessWidget {

  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product = products.firstWhere((element) => element["id"] == id);
    return Scaffold(
      appBar: AppBar(title: Text("My Single Product"),),
      body: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(product["image"],
              height: 200,
                width: 200,
              ),
              Text(product["name"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Center(child: Text(product["description"]),),
              Text("${product['price']}",style: TextStyle(fontSize: 20),),
              Text("${product['rating']}",style: TextStyle(fontSize: 10),),

            ],
          ),
        ),
      ),
    );
  }
}
