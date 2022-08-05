import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/login_first.dart';

class StartedSecond extends StatelessWidget {
  const StartedSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Healt First",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Exercise together with our best community fit in the world",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff828284),
                  ),
                ),
                const SizedBox(height: 60),
                Image.asset('images/gallery.png'),
                const SizedBox(height: 60),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 55,
                  color: const Color(0xffAFEA0D),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginFirst(),
                      ),
                    );
                  },
                  child: Text(
                    "Shape My Body",
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Text(
                      "Terms & Conditions",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        color: const Color(0xff757575),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
