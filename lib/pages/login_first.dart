import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_second.dart';

class LoginFirst extends StatefulWidget {
  const LoginFirst({Key? key}) : super(key: key);

  @override
  State<LoginFirst> createState() => _LoginFirstState();
}

class _LoginFirstState extends State<LoginFirst> {
  bool _passwordVisible = false;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    Widget image = Image.asset(
      'images/coin_icon.png',
      width: 50,
    );

    Widget title = Text(
      "Welcome back.\nLet`s make money.",
      style: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );

    Widget email = TextFormField(
      initialValue: "ihsanbagus@gmail.com",
      textInputAction: TextInputAction.next,
      style: GoogleFonts.openSans(
        fontSize: 14,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        fillColor: const Color(0xff262A34),
        filled: true,
        contentPadding: const EdgeInsets.all(25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
        ),
      ),
    );

    Widget password = TextFormField(
      initialValue: "password",
      obscureText: !_passwordVisible,
      style: GoogleFonts.openSans(
        fontSize: 14,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        fillColor: const Color(0xff262A34),
        filled: true,
        contentPadding: const EdgeInsets.all(25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
        ),
        suffixIcon: IconButton(
          padding: const EdgeInsets.only(right: 15),
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xff6F7075),
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
    );

    Widget forgot = Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {},
        child: Text(
          "Forgot My Password",
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: const Color(0xff6A6B70),
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );

    Widget signin = MaterialButton(
      minWidth: double.infinity,
      height: 55,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginSecond(),
          ),
        );
      },
      color: const Color(0xffFCAC15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17),
      ),
      child: Text(
        "Sign In",
        style: GoogleFonts.openSans(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: const Color(0xff6B4909),
        ),
      ),
    );

    Widget signup = Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Don`t have account? ",
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: "Sign Up!",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff181A20),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
          // color: const Color(0xff181A20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image,
              const SizedBox(height: 70),
              title,
              const SizedBox(height: 70),
              email,
              const SizedBox(height: 20),
              password,
              const SizedBox(height: 10),
              forgot,
              const SizedBox(height: 120),
              signin,
              const SizedBox(height: 30),
              signup,
            ],
          ),
        ),
      ),
    );
  }
}
