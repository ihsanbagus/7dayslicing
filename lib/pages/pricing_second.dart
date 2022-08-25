import 'package:flutter/material.dart';
import 'package:sevendays/pages/cart.dart';

class PricingSecond extends StatelessWidget {
  const PricingSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Cart(),
            ),
          );
        },
        child: Image.asset(
          "ss/12pricing.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
