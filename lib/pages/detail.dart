import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset("images/cover_random.png"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Arrina La",
                      style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Bangka Belitung, Indonesia",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "About",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Booking Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset(
                          "images/date_one.png",
                          width: 80,
                          height: 100,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          "images/date_two.png",
                          width: 80,
                          height: 100,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          "images/date_three.png",
                          width: 80,
                          height: 100,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          "images/date_four.png",
                          width: 80,
                          height: 100,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$22,800",
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff3F6DF6),
                            ),
                          ),
                          Text(
                            "/night",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xff2F323A),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: MaterialButton(
                          color: const Color(0xff3F6DF6),
                          height: 60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Continue",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
