import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'list_view1': (BuildContext context) => const ListViewOneScreen(),
    'list_view2': (BuildContext context) => const ListViewThowScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // rutas dinamicas
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
