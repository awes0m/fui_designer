import 'package:desiner/features/clock/screens/clock.dart';
import 'package:desiner/features/lottie_animations/screens/lottie_animations.dart';
import 'package:desiner/features/neumorphism/screens/neumorphism.dart';
import 'package:flutter/material.dart';

import 'designs_list.dart';
import 'features/neumorphism/screens/dark_neumorphism.dart';


class Homepage extends StatelessWidget {
  static const String routeName = '/home';
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: SizedBox(
          child: ListView.builder(
              itemCount: widgetList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(widgetList[index]["icon"]),
                  title: Text(widgetList[index]["title"]),
                  onTap: () {
                    Navigator.pushNamed(context, widgetList[index]["route"]);
                  },
                );
              })),
    );
  }
}
