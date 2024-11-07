import 'package:flutter/material.dart';
import 'package:to_do_list_application/modules/home/setting/setting_app.dart';
import 'package:to_do_list_application/modules/home/task/task_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex=0;
  List<Widget> itemsBottom = [
     const TaskApp(),
     const SettingApp(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Scaffold(
       appBar: AppBar(
         title: Text("Home"),
         backgroundColor: theme.colorScheme.primary,
       ),
       body: itemsBottom[selectIndex],

      bottomNavigationBar:  BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: theme.colorScheme.onPrimary,
          selectedIconTheme: IconThemeData(

            color: theme.colorScheme.secondary,
            size: 32,

          ),
          unselectedIconTheme: IconThemeData(
            color: theme.colorScheme.onSecondary,
            size: 26,
          ),
          currentIndex: selectIndex,
          onTap: (int index) {
            setState(() {
              selectIndex = index;
            });
          },

          items:const [

            BottomNavigationBarItem(icon: Icon(Icons.dehaze_rounded),label: "Dehaze"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          ]
      ),

    );
  }
}

