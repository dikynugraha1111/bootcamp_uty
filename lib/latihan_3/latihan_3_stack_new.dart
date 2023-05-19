import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Latihan3StackNew extends StatelessWidget {
  const Latihan3StackNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100.0,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.red.withOpacity(1),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 100,
                    height: 20,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
