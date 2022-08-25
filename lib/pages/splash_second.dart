import 'package:flutter/material.dart';
import 'package:sevendays/pages/getstarted_first.dart';

class SplashSecond extends StatelessWidget {
  const SplashSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GetStartedFirst(),
            ),
          );
        },
        child: Image.asset(
          "ss/2splash.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
