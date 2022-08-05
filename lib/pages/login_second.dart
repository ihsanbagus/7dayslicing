import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/empty_first.dart';

class LoginSecond extends StatelessWidget {
  const LoginSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget email = TextFormField(
      initialValue: "ihsanbagus@Gmail.com",
      textInputAction: TextInputAction.next,
      style: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        fillColor: const Color(0xffF3F3F3),
        filled: true,
        contentPadding: const EdgeInsets.all(25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: const BorderSide(
              width: 3, color: Colors.transparent), //<-- SEE HERE
        ),
      ),
    );

    Widget password = TextFormField(
      initialValue: "asdasd",
      obscureText: true,
      style: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        fillColor: const Color(0xffF3F3F3),
        filled: true,
        contentPadding: const EdgeInsets.all(25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: const BorderSide(
              width: 3, color: Colors.transparent), //<-- SEE HERE
        ),
      ),
    );

    Widget login = MaterialButton(
      minWidth: double.infinity,
      height: 55,
      color: const Color(0xff5468FF),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EmptyFirst(),
          ),
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      child: Text(
        "Log In",
        style: GoogleFonts.openSans(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );

    Widget create = MaterialButton(
      minWidth: double.infinity,
      height: 55,
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
        side: const BorderSide(color: Color(0xffCFCFCF)),
      ),
      child: Text(
        "Create New Account",
        style: GoogleFonts.openSans(
          fontSize: 18,
          color: const Color(0xffCFCFCF),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(65, 65, 65, 55),
              child: Center(
                child: Image.asset(
                  "images/paper_icon.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: GoogleFonts.openSans(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  email,
                  const SizedBox(height: 20),
                  Text(
                    "Password",
                    style: GoogleFonts.openSans(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  password,
                  const SizedBox(height: 50),
                  login,
                  const SizedBox(height: 15),
                  create,
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
