import 'dart:io';

import 'package:empower_ed/first_screen_ui/logo_empowered.dart';
import 'package:empower_ed/second_screen_ui/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class LogoCircle extends StatefulWidget {
  final int maxRadius;
  final int minRadius;
  final int radiusStepsNumber;
  final int fadingTimeInMillis;
  final int fadingStep;
  
  const LogoCircle(
    this.maxRadius, 
    this.minRadius, 
    this.radiusStepsNumber, 
    this.fadingTimeInMillis, 
    this.fadingStep,
    {super.key}
  );

  @override
  State<LogoCircle> createState() => LogoCircleState();
  
}

class LogoCircleState extends State<LogoCircle> {
  late List<double> opacityLevel = List.generate(widget.radiusStepsNumber, (index) => 0);


  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 0), () {
      changeOpacity(0);
      for(int i = 1; i < opacityLevel.length; i ++) {
        Future.delayed(Duration(milliseconds: widget.fadingTimeInMillis + (widget.fadingStep * (i - 1))), () {
          changeOpacity(i);
        });
      }
    });
  }

  void changeOpacity(int index) {
    setState(() => opacityLevel[index] = 1);
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    int step = ((widget.maxRadius - widget.minRadius) / (widget.radiusStepsNumber - 1)).toInt();
    for(int i = 0; i < widget.radiusStepsNumber; i += 1) {
      children.add(
        AnimatedOpacity(
          opacity: opacityLevel[i], 
          duration: Duration(milliseconds: widget.fadingTimeInMillis + (i * widget.fadingStep)),
          onEnd: i == widget.radiusStepsNumber - 1 ? () => {
            Navigator.of(context).pushNamed("second_screen")
          } : null,
          child: Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Container(
                width: (widget.maxRadius - (i * step)).toDouble(),
                height: (widget.maxRadius - (i * step)).toDouble(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
              ),
              i == widget.radiusStepsNumber - 1 ? LogoEmpowered(widget.minRadius.toDouble()) : Container(
                width: (widget.maxRadius - (i * step) - 5).toDouble(),
                height: (widget.maxRadius - (i * step) - 5).toDouble(),
                decoration: BoxDecoration(
                  color: const Color(0xfff6fbfa),
                  shape: BoxShape.circle
                ),
              ),
            ],
          )
        )
      );
    }

    return Stack(
      alignment: AlignmentGeometry.center,
      children: children,
    );
  }
}