import 'package:flutter/material.dart';
import 'package:sevendays/pages/pricing_first.dart';

class RatingSecond extends StatelessWidget {
  const RatingSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PricingFirst(),
            ),
          );
        },
        child: Image.asset(
          "ss/10rating.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
