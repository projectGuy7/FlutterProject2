import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  
                ],
              ),
            )
          )
        ]
      )
    );
  }

}