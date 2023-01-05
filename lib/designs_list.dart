import 'package:flutter/material.dart';

import 'features/clock/screens/clock.dart';
import 'features/lottie_animations/screens/lottie_animations.dart';
import 'features/minimalist_login_ui/screens/minimal_login_screen.dart';
import 'features/neumorphism/screens/dark_neumorphism.dart';
import 'features/neumorphism/screens/neumorphism.dart';
import 'features/notifications_plant_ui/screens/plant_ui_page.dart';
import 'homepage.dart';

List<Map<String, dynamic>> widgetList = [
  {
    "title": "Home",
    "icon": Icons.home,
    "color": Colors.blue,
    "route": Homepage.routeName,
  },
  {
    "title": "Clock",
    "icon": Icons.punch_clock,
    "color": Colors.red[900],
    "route": Clock.routeName,
  },
  {
    "title": "Lottie Animations",
    "icon": Icons.animation,
    "color": Colors.indigo,
    "route": AnimationsLottie.routeName,
  },
  {
    "title": "Neumorphism",
    "icon": Icons.donut_large,
    "color": Colors.grey[300],
    "route": Neumorphism.routeName,
  },
  {
    "title": "dARK Neumorphism",
    "icon": Icons.done_outline_rounded,
    "color": Colors.grey[900],
    "route": DarkNeumorphism.routeName
  },
  {
    "title": "Minimal Login_Ui",
    "icon": Icons.login,
    "color": Colors.orange[900],
    "route": MinimalLoginScreen.routeName,
  },
  {
    "title": "Plant Login_Ui_with Notifications",
    "icon": Icons.park,
    "color": Colors.greenAccent[900],
    "route": PlantUIPage.routeName,
  },
];
