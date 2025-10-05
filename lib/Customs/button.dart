import 'package:flutter/material.dart';
import 'package:task1/Resources/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPressed ;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor:AppColors.btnColor,
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 15)),
        child:  Text(
          text,
          style: Theme.of(context).textTheme.displaySmall,
        ));
  }
}
