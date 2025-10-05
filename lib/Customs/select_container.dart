import 'package:flutter/material.dart';
import 'package:task1/Resources/app_colors.dart';

class Select extends StatelessWidget {
  final void Function() onTap;
  final bool click;
  final String text;
  final IconData icon;

  const Select({
    super.key,
    required this.onTap,
    this.click = true,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: click ? AppColors.containerColor : AppColors.btnColor,
              borderRadius: BorderRadius.circular(10)),
          width: 150,
          height: 150,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  icon,
                  color: AppColors.white,
                  size: 100,
                ),
                Text(text,
                    style:Theme.of(context).textTheme.headlineSmall),
              ])),
    );
  }
}
