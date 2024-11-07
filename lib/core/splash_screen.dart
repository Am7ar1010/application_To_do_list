import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_list_application/core/items_route_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(
          context,
          ItemsRouteName.loginView,
        );
      },
    );

    return Scaffold(
      backgroundColor: Color(0xffDFECDB),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset("assets/image/Image_splash_screen.png")),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                " To Do List",
                style: TextStyle(
                    color: Color(0xff3598DB),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 15),
              Icon(Icons.check,size: 50,color:Color(0xffFFFFFF) ,shadows: [Shadow(blurRadius: 15,color: Colors.blue)],)
            ],
          ),
          SizedBox(height: 20),

        ],
      ),

      
    );
  }
}
