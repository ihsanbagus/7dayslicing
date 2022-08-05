import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/cart.dart';

class PricingSecond extends StatelessWidget {
  const PricingSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget feature(String text) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 26.0, left: 26.0),
        child: Row(
          children: [
            Image.asset(
              "images/orange_check.png",
              width: 26,
              height: 26,
            ),
            const SizedBox(width: 12),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/linier_background.png'),
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Image.asset(
                "images/pricing_illustration.png",
                width: 165,
              ),
              const SizedBox(height: 25),
              Text(
                "Pro Features",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75.0),
                child: Text(
                  "Unlock the winner modules and get more insights",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff7F7FAD),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              feature("Unlock Our Top Charts"),
              feature("Save More than 1,000 Docs"),
              feature("24/7 Customer Support"),
              feature("Track Company`s Spending"),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Cart(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffE57C73),
                    shadowColor: const Color(0xffE57C73),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 40),
                      Expanded(
                        child: Text(
                          "Subscribe Now",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Image.asset("images/button_arrow.png", width: 40),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Contact Support",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
