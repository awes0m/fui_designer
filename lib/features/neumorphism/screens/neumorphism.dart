import 'package:desiner/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Neumorphism extends StatelessWidget {
  static const String routeName = '/neumorphism';
  const Neumorphism({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('neomorphism'),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            // borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white70,
                offset: Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ],
          ),
          child: const Text("Hello!"),
        ),
      ),
    );
  }
}
