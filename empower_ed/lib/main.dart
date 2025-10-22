import 'package:empower_ed/first_screen_ui/logo_circle.dart';
import 'package:empower_ed/second_screen_ui/second_screen.dart';
import 'package:empower_ed/third_screen_ui/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff6fbfa),
        body: SafeArea(
          child: Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                settings: settings,
                builder: (context) {
                  switch(settings.name) {
                    case "second_screen":
                      return SecondScreen();
                    case "third_screen":
                      return ThirdScreen();
                    default:
                      return Center(child: LogoCircle(400, 80, 4, 1000, 1000));
                  }
                }
              );
            },
          )
        )
      ),
    );
  }
}