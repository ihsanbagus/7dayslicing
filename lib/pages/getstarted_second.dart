import 'package:flutter/material.dart';
import 'package:sevendays/pages/login_first.dart';

class GetStartedSecond extends StatelessWidget {
  const GetStartedSecond({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginFirst(),
            ),
          );
        },
        child: Image.asset(
          "ss/4getstarted.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
