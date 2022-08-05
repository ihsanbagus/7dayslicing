import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/splash_second.dart';

class SplashFirst extends StatefulWidget {
  const SplashFirst({Key? key}) : super(key: key);

  @override
  State<SplashFirst> createState() => _SplashFirstState();
}

class _SplashFirstState extends State<SplashFirst> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (cc) => const SplashSecond(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131e),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/sword_icon.png',
              width: 140,
            ),
            const SizedBox(height: 200),
            Text(
              'VENTURE',
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 32,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
