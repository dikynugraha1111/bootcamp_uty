import 'package:bootcamp_uty/latihan_1/latihan_1_page.dart';
import 'package:bootcamp_uty/latihan_2/latihan_2_button.dart';
import 'package:bootcamp_uty/latihan_2/latihan_2_column.dart';
import 'package:bootcamp_uty/latihan_2/latihan_2_container.dart';
import 'package:bootcamp_uty/latihan_2/latihan_2_container_new.dart';
import 'package:bootcamp_uty/latihan_2/latihan_2_text.dart';
import 'package:bootcamp_uty/latihan_2/latihan_2_textfield.dart';
import 'package:bootcamp_uty/latihan_2/latihan_2_textfield_new.dart';
import 'package:bootcamp_uty/latihan_3/latihan_3_listview.dart';
import 'package:bootcamp_uty/latihan_3/latihan_3_navigation.dart';
import 'package:bootcamp_uty/latihan_3/latihan_3_row.dart';
import 'package:bootcamp_uty/latihan_3/latihan_3_stack.dart';
import 'package:flutter/material.dart';

import 'latihan_2/latihan_2_button_new.dart';
import 'latihan_2/latihan_2_column_new.dart';

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
      home: Latihan2ColumnNew(),
    );
  }
}
