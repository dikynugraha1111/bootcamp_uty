import 'package:flutter/material.dart';

class Latihan3Row extends StatelessWidget {
  const Latihan3Row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Ini menggunakan row"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 30, width: 120.0, color: Colors.greenAccent),
              Container(height: 30, width: 120.0, color: Colors.orangeAccent),
              Container(height: 30, width: 120.0, color: Colors.redAccent),
            ],
          ),
        ],
      ),
    );
  }
}
