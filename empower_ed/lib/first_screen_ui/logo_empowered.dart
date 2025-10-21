import 'package:flutter/material.dart';

class LogoEmpowered extends StatelessWidget{
  final double size;
  const LogoEmpowered(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size + 100,
      width: size + 100,
      child: Stack(
        alignment: AlignmentGeometry.center,
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
          ),
          Text(
            "ED",
            style: TextStyle(
              color: Color(0xfff2c94c),
              fontSize: 28.0,
              fontWeight: FontWeight.w900
            ),
          ),
          Positioned(
            top: size + 50,
            child:
            Text(
              "EmpowerED",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600
              ),
            ),
          )
        ],
      )
    );
    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Stack(
    //       alignment: AlignmentGeometry.center,
    //       children: [
    //         Container(
    //           width: size,
    //           height: size,
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             shape: BoxShape.circle
    //           ),
    //         ),
    //         Text(
    //           "ED",
    //           style: TextStyle(
    //             color: Color(0xfff2c94c),
    //             fontSize: 20.0
    //           ),
    //         )
    //       ],
    //     ),
    //     Text(
    //       "ED",
    //       style: TextStyle(
    //         fontSize: 14.0
    //       ),
    //     )
    //   ],
    // );
  }
}