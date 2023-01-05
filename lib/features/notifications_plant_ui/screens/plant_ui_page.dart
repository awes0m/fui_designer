import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'plant_stats_page.dart';

class PlantUIPage extends StatefulWidget {
  static const String routeName = '/plant_ui';

  const PlantUIPage({Key? key}) : super(key: key);

  @override
  _PlantUIPageState createState() => _PlantUIPageState();
}

class _PlantUIPageState extends State<PlantUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitle(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PlantStatsPage(),
                ),
              );
            },
            icon: Icon(
              Icons.insert_chart_outlined_rounded,
              size: 30,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlantImage(),
            SizedBox(
              height: 25,
            ),
            HomePageButtons(
              onPressedOne: () async {},
              onPressedTwo: () async {},
              onPressedThree: () async {},
            ),
          ],
        ),
      ),
    );
  }
}
