import 'package:flutter/material.dart';

import '../../../common/widgets/clockbody.dart';

class Clock extends StatelessWidget {
  static const String routeName = '/clock';
  const Clock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        // ignore: unnecessary_new
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //clock
            const ClockBody(),
          ],
        ),
      ),
    );
  }
}

