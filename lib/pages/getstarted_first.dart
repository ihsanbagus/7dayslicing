import 'package:flutter/material.dart';
import 'package:sevendays/pages/getstarted_second.dart';

class GetStartedFirst extends StatelessWidget {
  const GetStartedFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GetStartedSecond(),
            ),
          );
        },
        child: Image.asset(
          "ss/3getstarted.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
