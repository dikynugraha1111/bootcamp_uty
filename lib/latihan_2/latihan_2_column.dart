import 'package:flutter/material.dart';

class Latiahan2Column extends StatefulWidget {
  const Latiahan2Column({super.key});

  @override
  State<Latiahan2Column> createState() => _Latiahan2ColumnState();
}

class _Latiahan2ColumnState extends State<Latiahan2Column> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Hallo semuanya...."),
            Text("Widget ini disusun menggunakan column"),
            Text(
              "Kalian bisa menempelkan banyak widget bersusun kebawah seperti ini menggunakan column",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
