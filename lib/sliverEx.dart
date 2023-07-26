import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: SliverEx(),
  ));
}

class SliverEx extends StatelessWidget {
  const SliverEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: const Text('Slliver Appbar'),
              bottom: AppBar(
                elevation: 0,
                title: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Search Here",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)),
                  ),
                ),
              ),
            ),
            SliverList(
                delegate:
                    SliverChildBuilderDelegate(
                      childCount: 30,
                            (context, index) => Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                              height: 80,
                          child: Text("User $index",style: const TextStyle(fontSize: 30),),
                        ))),
          ],
        ),
      ),
    );
  }
}
