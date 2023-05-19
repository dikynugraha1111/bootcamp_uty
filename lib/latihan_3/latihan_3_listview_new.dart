import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Latihan3ListviewNew extends StatelessWidget {
  const Latihan3ListviewNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.teal,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.brown,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Text("list view ke $index");
            },
          ),
          const SizedBox(height: 10.0),
          const Text("Flash Sale"),
        ],
      ),
    );
  }
}
