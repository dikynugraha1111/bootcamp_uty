import 'package:flutter/material.dart';

class Latihan2Button extends StatefulWidget {
  const Latihan2Button({super.key});

  @override
  State<Latihan2Button> createState() => _Latihan2ButtonState();
}

class _Latihan2ButtonState extends State<Latihan2Button> {
  String textButton = "Klik Akuuu ...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              textButton = "Dharrr";
            });
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(12.0),
            backgroundColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
          ),
          child: Text(textButton),
        ),
      ),
    );
  }
}
