import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/empty_second.dart';

class EmptyFirst extends StatelessWidget {
  const EmptyFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset("images/empty_illustration.png"),
              const SizedBox(height: 100),
              Text(
                "Success Order",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "We will delivery your package as soon as possible",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmptySecond(),
                    ),
                  );
                },
                minWidth: 200,
                height: 55,
                color: const Color(0xffF94593),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Text(
                  "Done",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
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
