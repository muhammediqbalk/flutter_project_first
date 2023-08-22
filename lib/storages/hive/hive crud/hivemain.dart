import 'package:flutter/material.dart';

class CRUD_HIVE extends StatefulWidget {
  const CRUD_HIVE({super.key});

  @override
  State<CRUD_HIVE> createState() => _CRUD_HIVEState();
}

class _CRUD_HIVEState extends State<CRUD_HIVE> {
  List<Map<String, dynamic>> task = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY TODO"),
      ),
      body: task.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
          itemCount: task.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: const Icon(Icons.task),
                title:  Text(""),
                subtitle:  Text(""),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),

                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: Icon(Icons.add)),
    );
  }
}
