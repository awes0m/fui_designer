import 'package:flutter/material.dart';

import 'features/clock/screens/clock.dart';
import 'features/lottie_animations/screens/lottie_animations.dart';
import 'features/minimalist_login_ui/screens/minimal_login_screen.dart';
import 'features/neumorphism/screens/dark_neumorphism.dart';
import 'features/neumorphism/screens/neumorphism.dart';
import 'features/notifications_plant_ui/screens/plant_ui_page.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Designs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Homepage.routeName,
      routes: {
        Homepage.routeName: (context) => const Homepage(),
        AnimationsLottie.routeName: (context) => const AnimationsLottie(),
        Neumorphism.routeName: (context) => const Neumorphism(),
        DarkNeumorphism.routeName: (context) => const DarkNeumorphism(),
        Clock.routeName: (context) => const Clock(),
        MinimalLoginScreen.routeName: (context) => const MinimalLoginScreen(),
        PlantUIPage.routeName: (context) => const PlantUIPage(),
      },
    );
  }
}
