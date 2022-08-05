import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/rating_second.dart';

class RatingFirst extends StatelessWidget {
  const RatingFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181925),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 90),
            Image.asset(
              "images/pizza.png",
              width: 200,
            ),
            const SizedBox(height: 20),
            Text(
              "Pizza Ballado",
              textWidthBasis: TextWidthBasis.longestLine,
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "\$900",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 90),
            Align(
              alignment: Alignment.centerLeft,
              widthFactor: 2.1,
              child: Text(
                "Was it delicious?",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "images/emoji_one.png",
                  width: 60,
                ),
                Image.asset(
                  "images/emoji_two.png",
                  width: 60,
                ),
                Image.asset(
                  "images/emoji_three.png",
                  width: 60,
                ),
                Image.asset(
                  "images/emoji_four.png",
                  width: 60,
                ),
              ],
            ),
            const SizedBox(height: 90),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RatingSecond(),
                  ),
                );
              },
              minWidth: 210,
              height: 55,
              color: const Color(0xff34D186),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Text(
                "Rate Now",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
