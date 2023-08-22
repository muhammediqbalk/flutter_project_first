import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_first/passing_data_between_screen2/data_dammy.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    List imageui = [
    "assets/images/germany.jpeg",
     "assets/images/india1.jpeg",
      "assets/images/italy.jpeg",
      "assets/images/japan.jpeg",
    ];

    final id = ModalRoute.of(context)?.settings.arguments;
    final product = items.firstWhere((element) => element["id"] == id);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    product["image"],
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 300, 0),
            child: Text(
              product["name"],
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              product["description"],
              style: const TextStyle(fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(5, 15, 230, 0),
            child: Text(
              "Place to vist",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          CarouselSlider(
              items: List.generate(
                  4,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(imageui[index])),
                        ),
                      )),
              options: CarouselOptions(
                  height: 150,
                  // aspectRatio: 16 / 9,
                  viewportFraction: .5,
                  initialPage: 4,
                  enableInfiniteScroll: true,
                  autoPlay: false,
                  // autoPlayInterval: Duration(seconds: 5),
                  // autoPlayCurve: Curves.easeInOutCubicEmphasized,
                  enlargeCenterPage: false,
                  enlargeFactor: .3,

                  scrollDirection: Axis.horizontal)),

             ElevatedButton(
                onPressed: () {},
                style: ElevatedButton. styleFrom(padding: const EdgeInsets.symmetric(horizontal: 130.0,vertical: 15.0), backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
                )
                ),
                child: const Text("Press to Explore"),


          ),
        ],
      ),
    );
  }
}
