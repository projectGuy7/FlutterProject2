import 'package:empower_ed/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  
  const CustomTextField(this.title, {this.prefixIcon, this.suffixIcon, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(
          title,
          style: TextStyles.titleSmall,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            focusColor: Colors.amber,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            labelText: title
          ),
        )
      ],
    );
  }
}