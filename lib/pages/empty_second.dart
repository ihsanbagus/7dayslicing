import 'package:flutter/material.dart';
import 'package:sevendays/pages/rating_first.dart';

class EmptySecond extends StatelessWidget {
  const EmptySecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RatingFirst(),
            ),
          );
        },
        child: Image.asset(
          "ss/8empty.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
