import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_store_app/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:i_store_app/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: IAppTheme.lightTheme,
      darkTheme: IAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}