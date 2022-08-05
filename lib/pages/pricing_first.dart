import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/pricing_second.dart';

class PricingFirst extends StatefulWidget {
  const PricingFirst({Key? key}) : super(key: key);

  @override
  State<PricingFirst> createState() => _PricingFirstState();
}

class _PricingFirstState extends State<PricingFirst> {
  late var _isSelected = 0;

  @override
  Widget build(BuildContext context) {
    Widget option(
      int index,
      String icon,
      String title,
      String subtitle,
      String susubtitle,
    ) {
      return InkWell(
        onTap: () {
          setState(() {
            _isSelected = index;
          });
        },
        borderRadius: BorderRadius.circular(40),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: _isSelected == index
                  ? const Color(0xff5343C2)
                  : const Color(
                      0xffD9DEEA,
                    ),
              width: 2,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                icon,
                width: 60,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "$subtitle ",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xffA3A8B8),
                        ),
                        children: [
                          TextSpan(
                            text: susubtitle,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff5343C2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              _isSelected == index
                  ? Image.asset("images/purple_check.png", width: 26)
                  : Container(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                "images/crown.png",
                width: 100,
              ),
              const SizedBox(height: 50),
              Text(
                "Which one you wish to Upgrade?",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 50),
              option(
                0,
                "images/pig_icon.png",
                "Money Security",
                "support",
                "24/7",
              ),
              const SizedBox(height: 25),
              option(
                1,
                "images/paper_icon.png",
                "Automation",
                "we provide",
                "Invoice",
              ),
              const SizedBox(height: 25),
              option(
                2,
                "images/dollar_icon.png",
                "Balance Report",
                "can up to",
                "10k",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MaterialButton(
        color: const Color(0xff6050E7),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 23),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const PricingSecond();
            }),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Upgrade Now",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Image.asset(
              "images/right_arrow.png",
              width: 24,
            ),
          ],
        ),
      ),
    );
  }
}
