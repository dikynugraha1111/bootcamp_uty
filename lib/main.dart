import 'package:bootcamp_uty/latihan_1/latihan_1_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget build => materialApp ini merupakan root dari aplikasi kalian.
  // MaterialApp hanya di definisikan 1 kali saja pada setiap project. (Tidak boleh lebih dari 1)
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      // Definisikan page yang akan ditampilkan pertama saat aplikasi dijalankan
      home: Latihan1StatelessPage("Bootcamp UTY"),
    );
  }
}
