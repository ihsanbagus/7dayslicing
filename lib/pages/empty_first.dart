import 'package:flutter/material.dart';
import 'package:sevendays/pages/empty_second.dart';

class EmptyFirst extends StatelessWidget {
  const EmptyFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EmptySecond(),
            ),
          );
        },
        child: Image.asset(
          "ss/7empty.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
