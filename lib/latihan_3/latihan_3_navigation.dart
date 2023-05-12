import 'package:bootcamp_uty/latihan_3/pop_page.dart';
import 'package:flutter/material.dart';

class Latihan3Navigation extends StatelessWidget {
  const Latihan3Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latihan Navigasi")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const PopPage();
                }));
              },
              child: const Text("Push method"),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return const PopPage();
                }));
              },
              child: const Text("Push and replacement method"),
            )
          ],
        ),
      ),
    );
  }
}
