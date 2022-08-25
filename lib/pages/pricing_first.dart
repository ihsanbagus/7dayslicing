import 'package:flutter/material.dart';
import 'package:sevendays/pages/pricing_second.dart';

class PricingFirst extends StatelessWidget {
  const PricingFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PricingSecond(),
            ),
          );
        },
        child: Image.asset(
          "ss/11pricing.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
