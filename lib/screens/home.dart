import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.arrow_downward_outlined),
            title: const Text('Pagina 1'),
            onTap: () {
              Navigator.pushNamed(context, 'list_view2');
            },
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
