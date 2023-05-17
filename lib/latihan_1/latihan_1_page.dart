import 'package:flutter/material.dart';

// ------------- Stateless Widget --------------------

class Latihan1StatelessPage extends StatelessWidget {
  const Latihan1StatelessPage(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    // Scaffold digunakan sebagai lapisan awal pada layout dasar kalian. Ini berisikan fitur dasar layout seperti Appbar,
    // Floating Action Button, Bottom NavBar, dll.
    return Scaffold(
      // AppBar merupakan widget yang biasanya digunaan sebagai bagian atas / header dari aplikasi
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        title: const Text("Stateless Widget"),
        centerTitle: true,
        actions: const [Icon(Icons.more_horiz)],
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[100],
      // Body sendiri merupakan field untuk mengisi bagian tengah / isi dari scaffold itu sendiri.
      // Pada body sendiri akan mengembalikan nilai kembalian widget. Yang mana bisa kita isi dengan Widget
      body: Center(
        // Center merupakan widget yang digunakan untuk membuat widget yg diselimuti oleh center posisinya berada di tengah
        // Untuk setiap widget akan sering kita temui child. Dimana widget tersebut memiliki fungsi untuk membungkus widget lainnya.
        child: Text(name), // Menampilkan text yang ditangkap dari parameter
      ),
    );
  }
}

// ------------- Statefull Widget --------------------

class Latihan1StatefullPage extends StatefulWidget {
  const Latihan1StatefullPage(this.name, {super.key});

  final String name;

  @override
  State<Latihan1StatefullPage> createState() => _Latihan1StatefullPageState();
}

class _Latihan1StatefullPageState extends State<Latihan1StatefullPage> {
  String name = "";
  @override
  void initState() {
    // Melakukan sesuatu ketika object pertama kali dibuat.
    name = widget.name;
    super.initState();
  }

  @override
  void dispose() {
    // Melakukan sesuatu ketika object ini di hilangkan secara permanent dari tree.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.ac_unit),
        title: const Text("Stateless Widget"),
        centerTitle: true,
        actions: const [Icon(Icons.more_horiz)],
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[100],
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Melakukan refresh terhadap state / UI
            setState(() {
              name = "Nilai Baru .......";
            });
          },
          child: Text(widget.name),
        ),
      ),
    );
  }
}
