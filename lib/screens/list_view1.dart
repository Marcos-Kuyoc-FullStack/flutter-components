import 'package:flutter/material.dart';

class ListViewOneScreen extends StatelessWidget {
  const ListViewOneScreen({super.key});

  final sellers = const ['Marcos', 'Marcos 2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView(children: [
        ...sellers
            .map((seller) => ListTile(
                  title: Text(seller),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
            .toList()
      ]),
    );
  }
}
