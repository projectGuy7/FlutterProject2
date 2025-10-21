import 'package:empower_ed/first_screen_ui/logo_circle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff6fbfa),
        body: Center(child: LogoCircle(400, 80, 4, 1000, 1000, onAnimationEnded: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ) 
          )
        }))
      ),
    );
  }
}