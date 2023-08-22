import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listviewui(),
  ));
}

class listviewui extends StatelessWidget {
  const listviewui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("PRODUCT LIST")),
          actions: [Icon(Icons.shopping_cart)],
        ),
        body: ListView(
            children: [
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://images.unsplash.com/photo-1550258987-190a2d41a8ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80"),
                  title: Text("Name:"),
                  subtitle: Text("unit:"),


                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add To Cart"),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://images.unsplash.com/photo-1559181567-c3190ca9959b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80"),
                  title: Text("Name:"),
                  subtitle: Text("unit:"),
                  
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add To Cart"),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://images.unsplash.com/photo-1557800636-894a64c1696f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1365&q=80"),
                  title: Text("Name:"),
                  subtitle: Text("unit:"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add To Cart"),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://images.unsplash.com/photo-1600423115367-87ea7661688f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1335&q=80"),
                  title: Text("Name:"),
                  subtitle: Text("unit:"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add To Cart"),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                    "https://images.unsplash.com/photo-1523049673857-eb18f1d7b578?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1375&q=80",
                    width: 39,
                    height: 52,
                    fit: BoxFit.fill,
                  ),
                  title: Text("Name:"),
                  subtitle: Text("unit:"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add To Cart"),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://images.unsplash.com/photo-1615484477778-ca3b77940c25?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1335&q=80"),
                  title: Text("Name:"),
                  subtitle: Text("unit:"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add To Cart"),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1430&q=80"),
                  title: Text("Name:"),
                  subtitle: Text("unit:"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add To Cart"),
                  ),
                ),
              ),
            ],
            ),
        );
    }
}