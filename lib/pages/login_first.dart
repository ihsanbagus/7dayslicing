import 'package:flutter/material.dart';
import 'login_second.dart';

class LoginFirst extends StatelessWidget {
  const LoginFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginSecond(),
            ),
          );
        },
        child: Image.asset(
          "ss/5signin.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
