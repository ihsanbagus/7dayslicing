import 'package:flutter/material.dart';
import 'package:sevendays/pages/rating_second.dart';

class RatingFirst extends StatelessWidget {
  const RatingFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RatingSecond(),
            ),
          );
        },
        child: Image.asset(
          "ss/9rating.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
