import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
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
    MenuOptions(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'avatar',
        screen: const AvatarScreen()),
    MenuOptions(
        route: 'animated',
        icon: Icons.play_arrow_outlined,
        name: 'animated',
        screen: const AnimatedScreen()),
    MenuOptions(
        route: 'inputs',
        icon: Icons.input_outlined,
        name: 'inputs',
        screen: const InputsScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
