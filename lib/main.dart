import 'package:flutter/material.dart';
import 'package:task1/Resources/app_colors.dart';
import 'Ui/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ClacPage(),
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          textTheme: TextTheme(
              bodyLarge: TextStyle(
                  color: AppColors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
              bodyMedium: TextStyle(
                  color: AppColors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              bodySmall: TextStyle(
                fontSize: 20,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
              displayLarge: TextStyle(
                color: AppColors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              displayMedium: TextStyle(
                color: AppColors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              displaySmall: TextStyle(
                  color: AppColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              headlineSmall:TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              ),
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.appBarColor,
          )),
      routes: {"calc": (context) => const ClacPage()},
    );
  }
}
