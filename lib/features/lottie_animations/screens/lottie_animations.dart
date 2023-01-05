import 'package:desiner/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationsLottie extends StatefulWidget {
  const AnimationsLottie({Key? key}) : super(key: key);
  static const String routeName = '/lottie';
  @override
  State<AnimationsLottie> createState() => _AnimationsLottieState();
}

class _AnimationsLottieState extends State<AnimationsLottie>
    with SingleTickerProviderStateMixin {
  //controller for the animation
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Lottie Animations'),
      body: Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                    'https://assets1.lottiefiles.com/packages/lf20_veqkjqvf.json'),
                GestureDetector(
                  onTap: () {
                    if (bookmarked) {
                      _controller.reverse();
                      bookmarked = false;
                    } else {
                      _controller.forward();
                      bookmarked = true;
                    }
                  },
                  child: Lottie.network(
                      'https://assets3.lottiefiles.com/packages/lf20_xdfeea13.json',
                      controller: _controller),
                ),
              ],
            ),
          )),
    );
  }
}
