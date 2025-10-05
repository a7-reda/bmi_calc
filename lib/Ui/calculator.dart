import 'package:flutter/material.dart';
import 'package:task1/Customs/app_slider.dart';
import 'package:task1/Customs/button.dart';
import 'package:task1/Customs/controllar.dart';
import 'package:task1/Customs/select_container.dart';
import 'package:task1/Resources/app_string.dart';
import 'package:task1/Ui/run_calc.dart';

class ClacPage extends StatefulWidget {
  const ClacPage({super.key});

  @override
  State<ClacPage> createState() => _ClacPageState();
}

class _ClacPageState extends State<ClacPage> {
  int age = 20;
  int weight = 69;
  bool click = true;
  bool click2 = true;
  double height = 171;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20),
            margin: const EdgeInsets.only(top: 50),
            child: Text(
              AppString.appBarTitle,
              style: Theme.of(context).textTheme.bodySmall,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Select(
              onTap: () {
                setState(() {
                  click2 = true;
                  click = !click;
                });
              },
              text: AppString.male,
              icon: Icons.male,
              click: click,
            ),
            Select(
              onTap: () {
                setState(() {
                  click = true;
                  click2 = !click2;
                });
              },
              text: AppString.female,
              icon: Icons.female,
              click: click2,
            )
          ],
        ),
        CustomSlider(
          text: height.round().toString(),
          value: height,
          onChange: (value) {
            setState(() {
              height = value;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Controller(
                title: AppString.age,
                number: age.toString(),
                onPressedOfRemove: () {
                  setState(() {
                    if (age >= 15) {
                      age -= 1;
                    }

                    if (age == 14) {
                      age = 60;
                    }
                  });
                },
                onPressedOfAdd: () {
                  setState(() {
                    if (age <= 60) {
                      age += 1;
                    }

                    if (age == 61) {
                      age = 15;
                    }
                  });
                }),
            Controller(
                title: AppString.weight,
                number: weight.toString(),
                onPressedOfRemove: () {
                  setState(() {
                    if (weight >= 45) {
                      weight -= 1;
                    }

                    if (weight == 44) {
                      weight = 150;
                    }
                  });
                },
                onPressedOfAdd: () {
                  setState(() {
                    if (weight <= 150) {
                      weight += 1;
                    }

                    if (weight == 151) {
                      weight = 45;
                    }
                  });
                })
          ],
        ),
        CustomButton(
          text: AppString.calcBtn,
          onPressed: () {
            double bmi = weight / ((height / 100) * (height / 100));

            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => RunCalc(bmi: bmi),
            ));
          },
        ),
      ],
    ));
  }
}
