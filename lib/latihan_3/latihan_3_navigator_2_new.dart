import 'package:bootcamp_uty/latihan_3/latihan_3_pop_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Latihan3Navigator2New extends StatelessWidget {
  const Latihan3Navigator2New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman 2")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return Latihan3Navigator3New();
              }),
            );
          },
          child: Text("Push halaman 3"),
        ),
      ),
    );
  }
}

class Latihan3Navigator3New extends StatelessWidget {
  const Latihan3Navigator3New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman 3")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return Latihan3Navigator4New();
              }),
            );
          },
          child: Text("Push halaman 4"),
        ),
      ),
    );
  }
}

class Latihan3Navigator4New extends StatelessWidget {
  const Latihan3Navigator4New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman 4")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) {
                return Latihan3Navigator5New();
              }),
              ModalRoute.withName("/halaman-2"),
            );
          },
          child: Text("Push halaman 5"),
        ),
      ),
    );
  }
}

class Latihan3Navigator5New extends StatelessWidget {
  const Latihan3Navigator5New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman 5")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) {
                return Latihan3PopNew();
              }),
              (route) => false,
            );
          },
          child: Text("pop"),
        ),
      ),
    );
  }
}
