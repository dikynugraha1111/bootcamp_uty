import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Latihan2ButtonNew extends StatefulWidget {
  const Latihan2ButtonNew({Key? key}) : super(key: key);

  @override
  State<Latihan2ButtonNew> createState() => _Latihan2ButtonNewState();
}

class _Latihan2ButtonNewState extends State<Latihan2ButtonNew> {
  String buttonText = "Pencet aku";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 50,
          width: 100,
          child: ElevatedButton(
            onPressed: () {
              // setState(() {
              //   buttonText = "Ohhhh";
              // });
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(12.0),
              primary: Colors.red,
              // backgroundColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(buttonText),
          ),
        ),
      ),
    );
  }
}
