import 'package:flutter/material.dart';

class Latihan2ContainerNew extends StatelessWidget {
  const Latihan2ContainerNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
            bottom: 10.0,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 88.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: const Text(
            "Ini child nya ajfojof oakjnfioaenion oainfionio",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.center,
            softWrap: false,
            overflow: TextOverflow.fade,
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
