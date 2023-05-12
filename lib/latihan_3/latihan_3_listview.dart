import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Latihan3ListView extends StatelessWidget {
  const Latihan3ListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> generatedItem() {
      return List.generate(
        30,
        (index) {
          return Text("Data ke -$index");
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("List view"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        children: [
          const Text(
              "Ini menggunakan list view dengan scrool direction horizontal"),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 30.0,
            child: ListView.builder(
              itemCount: 30,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 30.0,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(right: 4.0),
                );
              },
            ),
          ),
          const SizedBox(height: 24.0),
          const Text("Ini menggunakan list view"),
          const SizedBox(height: 8.0),
          ...generatedItem(),
          const SizedBox(height: 24.0),
          const Text("Ini menggunakan separated list view"),
          const SizedBox(height: 8.0),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Text("separator ke - $index");
            },
            separatorBuilder: (context, index) {
              return const Divider(thickness: 2.0);
            },
            itemCount: 30,
          )
        ],
      ),
    );
  }
}
