import 'package:empower_ed/text_styles.dart';
import 'package:empower_ed/third_screen_ui/custom_textfield.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      color: Colors.white,
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 30,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(
                    color: Colors.grey,
                    width: 2
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: IconButton(onPressed: () => {Navigator.of(context).pushNamed("second_screen")}, icon: Icon(Icons.arrow_back))
              ),
              Text(
                "Create Account",
                style: TextStyles.title,
              )
            ],
          ),
          Text(
            "Enjoy the various best courses we have, choose the category according to your wishes.",
            style: TextStyles.body,
          ),
          CustomTextField("Email", prefixIcon: Icon(Icons.mail)),
          CustomTextField("Phone Number", prefixIcon: Icon(Icons.phone)),
          CustomTextField("New Password", prefixIcon: Icon(Icons.lock), suffixIcon: Icon(Icons.visibility),),
          CustomTextField("Confirm Password", prefixIcon: Icon(Icons.lock), suffixIcon: Icon(Icons.visibility),),
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
                Text("Create")
              ],
            )
          ),
          Text(
            "Didn't have an account? SignIn",
            style: TextStyles.link,
          )
        ],
      )
    );
  }
  
}