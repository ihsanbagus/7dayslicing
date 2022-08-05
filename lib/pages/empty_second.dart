import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/rating_first.dart';

class EmptySecond extends StatelessWidget {
  const EmptySecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B33),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              "images/chart_illustration.png",
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 65),
            Text(
              "Boost Profit!",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Our tools are helping business\nto grow much faster",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 60),
            InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RatingFirst(),
                  ),
                );
              },
              child: Image.asset(
                "images/rocket_button.png",
                width: 65,
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
