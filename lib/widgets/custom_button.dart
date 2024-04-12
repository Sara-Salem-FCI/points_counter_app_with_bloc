import 'package:flutter/material.dart';

import '../app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
final void Function() onPressed;
final String text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        color: Colors.orange,
        onPressed: onPressed,
        child: Text(
          text,
          style: AppStyles.bold15,
        ),
      ),
    );
  }
}
