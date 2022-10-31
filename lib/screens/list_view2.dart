import 'package:flutter/material.dart';

class ListViewThowScreen extends StatelessWidget {
  final sellers = const ['Marcos', 'Marcos 2', 'Marcos 3'];

  const ListViewThowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('List View 2'), backgroundColor: Colors.indigo),
      body: ListView.separated(
        itemCount: sellers.length,
        itemBuilder: (context, index) {
          return (ListTile(
            title: Text(sellers[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.indigo),
            onTap: () => {print(sellers[index])},
          ));
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
