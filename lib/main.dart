import 'package:flutter/material.dart';
import 'package:to_do_list_application/core/application_theme.dart';
import 'package:to_do_list_application/core/items_generate_route.dart';
import 'package:to_do_list_application/core/items_route_name.dart';

void main() {
  runApp(const ToDoListAPP());
}

class ToDoListAPP extends StatelessWidget {
  const ToDoListAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do List',
      theme: ApplicationTheme.lightTheme,
      initialRoute: ItemsRouteName.splashScreen,
      onGenerateRoute: ItemsGenerateRoute.onGenerateRoutes,
    );

  }
  }



