import 'package:flutter/material.dart';

import 'package:fl_components/models/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        icon: Icons.home,
        name: 'Home',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'list_view1',
        icon: Icons.list_alt,
        name: 'list view 1',
        screen: const ListViewOneScreen()),
    MenuOptions(
        route: 'list_view2',
        icon: Icons.list,
        name: 'list view 2',
        screen: const ListViewThowScreen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.add_alert_outlined,
        name: 'alert',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.credit_card,
        name: 'card',
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'list_view1': (BuildContext context) => const ListViewOneScreen(),
  //   'list_view2': (BuildContext context) => const ListViewThowScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // rutas dinamicas
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
