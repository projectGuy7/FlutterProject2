import 'package:empower_ed/second_screen_ui/rounds.dart';
import 'package:empower_ed/text_styles.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double borderRadius = 50;
    final topPadding = 40.0;
    final horizontalPadding = 10.0;
    final bottomPadding = 10.0;
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: SizedBox(
            child: Stack(
              alignment: AlignmentGeometry.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Rounds(200, 10, 4)
                ),
                Positioned(
                  bottom: 15,
                  left: 15,
                  child: Rounds(150, 40, 4)
                ),
                Image(image: AssetImage("assets/people_talking.png"))
              ],
            ),
          )
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.fromLTRB(horizontalPadding, topPadding, horizontalPadding, bottomPadding),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(borderRadius), topRight: Radius.circular(borderRadius))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 15.0,
              children : [
                Text(
                  "Welcome To MyCourses",
                  style: TextStyles.title,
                ),
                Text(
                  "Enjoy the various best courses we have, choose the category according to your wishes.",
                  style: TextStyles.body,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 12,
                    children: [
                      Container(height: 7, width: 7, decoration: BoxDecoration(color: Color(0xffd5f3f0), shape: BoxShape.circle)),
                      Container(height: 7, width: 7, decoration: BoxDecoration(color: Color(0xffd5f3f0), shape: BoxShape.circle)),
                      Container(height: 7, width: 7, decoration: BoxDecoration(color: Colors.amber, shape: BoxShape.circle))
                    ],
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.amber),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStatePropertyAll(EdgeInsetsGeometry.symmetric(vertical: 15)),
                    textStyle: WidgetStatePropertyAll(TextStyles.button),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
                  ),
                  onPressed: () => {
                    Navigator.of(context).pushNamed("third_screen")
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Next!")
                    ],
                  )
                ),
                Text(
                  "Already Have an Account",
                  style: TextStyles.link,
                )
              ]
            ),
          )
        )
      ]
    );
  }

}