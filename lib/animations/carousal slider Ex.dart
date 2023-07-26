import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CSlider(),
  ));
}

class CSlider extends StatelessWidget {
  const CSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: List.generate(
              20,
              (index) => const Card(
                    child: Center(
                      child: Icon(
                        Icons.ac_unit,
                        size: 40,
                      ),
                    ),
                  )),
          // [
          //   Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //           fit: BoxFit.cover,
          //             image: NetworkImage(
          //                 "https://images.unsplash.com/photo-1689615056295-7a1aff1b304d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"))),
          //   ),
          //
          //   Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(
          //                 "https://images.unsplash.com/photo-1688988816492-f71727a11149?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"))),
          //   ),
          //
          //   Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(
          //                 "https://images.unsplash.com/photo-1682685796014-2f342188a635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"))),
          //   ),
          //
          //   Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(
          //                 "https://images.unsplash.com/photo-1689613737149-bc586c461c58?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80"))),
          //   ),
          //
          //   Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(
          //                 "https://images.unsplash.com/photo-1689615056522-2c3f0fcea5c7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
          //   ),
          //
          //   Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(
          //                 "https://images.unsplash.com/photo-1689736480649-68880e3b9d52?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
          //   ),
          //
          //   Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(
          //                 "https://images.unsplash.com/photo-1689621207916-f7f3ba12c71e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80"))),
          //   ),
          //
          //   Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(
          //                 "https://images.unsplash.com/photo-1689613737149-bc586c461c58?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80"))),
          //   ),
          //
          //   Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(
          //                 "https://images.unsplash.com/photo-1689613737149-bc586c461c58?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80"))),
          //   ),
          // ],
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: .6,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayCurve: Curves.easeInOutCubicEmphasized,
            enlargeCenterPage: true,
            enlargeFactor: .3,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
