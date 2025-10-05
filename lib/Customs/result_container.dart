import 'package:flutter/material.dart';
import 'package:task1/Resources/app_colors.dart';
import 'package:task1/Resources/app_string.dart';

class ResultContainer extends StatelessWidget {
  final String result;
  final String bmi;
  const ResultContainer({super.key, required this.result, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.containerColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(result, style: Theme.of(context).textTheme.displayMedium),
          Text(
            bmi,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            AppString.text,
            style:Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
