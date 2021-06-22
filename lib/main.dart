import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PayFlow",
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: HomePage(),
    );
  }
}
