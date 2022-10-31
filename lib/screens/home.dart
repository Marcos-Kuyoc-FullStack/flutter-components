import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length + 1,
        separatorBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(AppRoutes.menuOptions[index].icon,
                color: AppTheme.primary),
            title: Text(AppRoutes.menuOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
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
