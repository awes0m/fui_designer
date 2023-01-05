import 'package:desiner/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class DarkNeumorphism extends StatelessWidget {
  static const String routeName = '/darkNeumorphism';
  const DarkNeumorphism({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Dark neomorphism'),
      backgroundColor: Colors.grey[850],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                offset: const Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.grey.shade800,
                offset: const Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ],
          ),
          child: const Icon(Icons.android, size: 80, color: Colors.white),
        ),
      ),
    );
  }
}
