import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/pricing_first.dart';

class RatingSecond extends StatelessWidget {
  const RatingSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            children: [
              Image.asset(
                "images/office_illustration.png",
              ),
              const SizedBox(height: 50),
              Text(
                "Enjoy Your Meal",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Please rate our experience",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xff808EAB),
                ),
              ),
              const SizedBox(height: 50),
              Image.asset(
                "images/stars.png",
              ),
              const SizedBox(height: 36),
              TextField(
                enableSuggestions: true,
                maxLines: 5,
                textAlignVertical: TextAlignVertical.top,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF8F8F8),
                  hintText: "Your message",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xff808EAB),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PricingFirst(),
                    ),
                  );
                },
                color: const Color(0xff4074E6),
                minWidth: double.infinity,
                height: 55,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Text(
                  "Submit Review",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
