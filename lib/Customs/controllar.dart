import 'package:flutter/material.dart';
import 'package:task1/Resources/app_colors.dart';

class Controller extends StatelessWidget {
  final String title;
  final String number;
  final void Function() onPressedOfRemove;
  final void Function() onPressedOfAdd;

  const Controller(
      {super.key,
      required this.title,
      required this.number,
      required this.onPressedOfRemove,
      required this.onPressedOfAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.containerColor,
            borderRadius: BorderRadius.circular(10)),
        width: 150,
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineSmall),
            Text(number, style: Theme.of(context).textTheme.bodyMedium),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.addContainerColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: AppColors.white,
                      ),
                      onPressed: onPressedOfRemove,
                    )),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.addContainerColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: AppColors.white,
                      ),
                      onPressed: onPressedOfAdd,
                    ))
              ],
            )
          ],
        ));
  }
}
