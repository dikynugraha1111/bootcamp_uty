import 'package:bootcamp_uty/latihan_2/latihan_2_task.dart';
import 'package:bootcamp_uty/latihan_3/latihan_3_navigator_2_new.dart';
import 'package:bootcamp_uty/latihan_3/latihan_3_pop_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Latihan3NavigatorNew extends StatelessWidget {
  const Latihan3NavigatorNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Latihan3PopNew();
                }));
              },
              child: Text("Push halaman"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Latihan3PopNew();
                }));
              },
              child: Text("Push and replacement"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return Latihan3Navigator2New();
                    },
                    settings: RouteSettings(name: '/halaman-2'),
                  ),
                );
              },
              child: Text("Pindah halaman 2"),
            )
          ],
        ),
      ),
    );
  }
}
