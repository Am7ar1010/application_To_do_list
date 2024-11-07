
import 'package:flutter/material.dart';
import 'package:to_do_list_application/core/items_route_name.dart';
import 'package:to_do_list_application/core/splash_screen.dart';
import 'package:to_do_list_application/modules/home/setting/setting_app.dart';
import 'package:to_do_list_application/modules/home/task/task_app.dart';
import 'package:to_do_list_application/modules/login/login_view.dart';
import 'package:to_do_list_application/modules/sig-up/sig-Up_view.dart';

import '../modules/home/home_page.dart';

class ItemsGenerateRoute{
 static Route<dynamic> onGenerateRoutes(RouteSettings settings){
    switch (settings.name) {
      case ItemsRouteName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
      case ItemsRouteName.loginView:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
          settings: settings,
        );
      case ItemsRouteName.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
          settings: settings,
        );
      case ItemsRouteName.sigUpView:
        return MaterialPageRoute(
          builder: (context) => const SigUpView(),
          settings: settings,
        );
      case ItemsRouteName.settingApp:
        return MaterialPageRoute(
          builder: (context) => const SettingApp(),
          settings: settings,
        );
      case ItemsRouteName.taskApp:
        return MaterialPageRoute(
          builder: (context) => const TaskApp(),
          settings: settings,
        );



      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );

    }
  }
}

