import 'package:flutter/material.dart';

class Latihan3Stack extends StatelessWidget {
  const Latihan3Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latihan Stack")),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber[400],
            child: const Center(
              child: Text(
                "Stack - 1",
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 24.0,
              ),
              height: 75,
              width: MediaQuery.of(context).size.width,
              color: Colors.green[400],
              child: const Center(
                child: Text(
                  "Stack - 2",
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
