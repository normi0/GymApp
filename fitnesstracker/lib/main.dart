import 'package:fitnesstracker/source/features/auth/screens/splash_screen/splash_screen.dart';
import 'package:fitnesstracker/source/utils/theme/widgets_themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => WorkoutData(),
    // child:
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
