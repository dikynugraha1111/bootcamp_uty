import 'package:flutter/material.dart';

class Latihan2Container extends StatelessWidget {
  const Latihan2Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 24.0, right: 24.0),
          width: double.infinity,
          height: 175.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 2.0,
                spreadRadius: 1.0,
                offset: Offset(3, 2),
              )
            ],
            image: const DecorationImage(
              image: AssetImage("asset/image/nature.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
