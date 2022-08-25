import 'package:flutter/material.dart';
import 'package:sevendays/pages/splash_second.dart';

class SplashFirst extends StatelessWidget {
  const SplashFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SplashSecond(),
            ),
          );
        },
        child: Image.asset(
          "ss/1splash.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
