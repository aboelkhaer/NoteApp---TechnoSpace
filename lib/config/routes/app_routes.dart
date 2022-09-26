import 'package:flutter/material.dart';
import 'package:note_techno_space/core/utils/app_strings.dart';
import 'package:note_techno_space/features/home/presentation/pages/home_screen.dart';

class Routes {
  static const String initialRoute = '/';
}

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
