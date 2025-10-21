import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Rounds extends StatelessWidget {
  final double maxSize;
  final double minSize;
  final int steps;
  const Rounds(this.maxSize, this.minSize, this.steps, {super.key});

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    final stepSize = (maxSize - minSize) / (steps - 1);
    for(int i = 0; i < steps; i ++) {
      children.addAll(
        [
          Container(
            height: maxSize - (stepSize * i),
            width: maxSize - (stepSize * i),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            )
          ),
          Container(
            height: maxSize - (stepSize * i) - 5,
            width: maxSize - (stepSize * i) - 5,
            decoration: BoxDecoration(
              color: const Color(0xfff6fbfa),
              shape: BoxShape.circle
            )
          )
        ]
      );
    }
    return Stack(
      alignment: AlignmentGeometry.center,
      children: children
    );
  }

}