import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/getstarted_first.dart';

class SplashSecond extends StatelessWidget {
  const SplashSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.symmetric(vertical: 100),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/home.png',
                  width: 50,
                ),
                Text(
                  'HouseQu',
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            MaterialButton(
              textColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              elevation: 20,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GetStartedFirst(),
                  ),
                );
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
