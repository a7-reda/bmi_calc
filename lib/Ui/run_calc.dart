import 'package:flutter/material.dart';
import 'package:task1/Customs/button.dart';
import 'package:task1/Customs/result_container.dart';
import 'package:task1/Resources/app_colors.dart';
import 'package:task1/Resources/app_string.dart';

class RunCalc extends StatefulWidget {
  final double bmi;
  const RunCalc({
    super.key,
    required this.bmi,
  });

  @override
  State<RunCalc> createState() => _RunCalcState();
}

class _RunCalcState extends State<RunCalc> {
  String print() {
    String? result;
    switch (widget.bmi) {
      case <= 18:
        result = "Underweight";
        break;
      case >= 18.5 && <= 24.9:
        result = "Normal";
        break;
      case >= 25.0 && <= 39.9:
        result = "Overweight";
        break;
      case >= 40.0:
        result = "Obese";
        break;
    }
    return result!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.white),
        title: Center(
          child: Text(
            AppString.appBarTitle,
            style: TextStyle(color: AppColors.white),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              alignment: Alignment.center,
              child: Text(
                AppString.title,
                style: Theme.of(context).textTheme.displayLarge,
              )),
          ResultContainer(
            result: print(),
            bmi: widget.bmi.toStringAsFixed(2),
          ),
          CustomButton(
            text: AppString.recalcBtn,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
