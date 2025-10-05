import 'package:flutter/material.dart';
import 'package:task1/Resources/app_colors.dart';
import 'package:task1/Resources/app_string.dart';

class CustomSlider extends StatelessWidget {
  final String text;

  final double value;
  final void Function(double) onChange;
  const CustomSlider(
      {super.key,
      required this.text,
      required this.value,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(AppString.height,
              style: Theme.of(context).textTheme.headlineSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 10),
                child: Text(
                  AppString.cm,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              )
            ],
          ),
          Slider(
            value: value,
            max: 300,
            min: 100,
            divisions: 300,
            onChanged: onChange,
            activeColor: AppColors.red,
            thumbColor: AppColors.red,
          ),
        ],
      ),
    );
  }
}
