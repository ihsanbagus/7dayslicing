import 'package:flutter/material.dart';
import 'package:sevendays/pages/empty_first.dart';

class LoginSecond extends StatelessWidget {
  const LoginSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EmptyFirst(),
            ),
          );
        },
        child: Image.asset(
          "ss/6signin.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
