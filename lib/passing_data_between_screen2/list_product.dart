import 'package:flutter/material.dart';
import 'package:flutter_project_first/passing_data_between_screen2/data_dammy.dart';
import 'package:flutter_project_first/passing_data_between_screen2/details_product.dart';

void main() {
  runApp(MaterialApp(
    home: ListProduct(),
    debugShowCheckedModeBanner: false,
    routes: {
      "details": (context) => DetailsProduct(),
      // "Cart" : (context) => ListView(),
    },
  ));
}

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),

      body:

      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text("Populer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          ),

          Expanded(
            child: ListView(
              children: items
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(onTap: ()=> gotodetails(context,e["id"]),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image:  AssetImage(e["image"],),fit: BoxFit.fitWidth)
                          ),
                          
                          height: 150,

                          child:Padding(
                            padding: const EdgeInsets.fromLTRB(15,110,0,0),
                            child: Text(e["name"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),

                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, "details", arguments: id);
  }
}
