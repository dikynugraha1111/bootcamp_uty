import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Latihan2ColumnNew extends StatefulWidget {
  const Latihan2ColumnNew({Key? key}) : super(key: key);

  @override
  State<Latihan2ColumnNew> createState() => _Latihan2ColumnNewState();
}

class _Latihan2ColumnNewState extends State<Latihan2ColumnNew> {
  final TextEditingController textController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan column"),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Center(
                  child: TextFormField(
                    controller: textController,
                    maxLength: 30,
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      labelText: "Masukan Username",
                      floatingLabelStyle: const TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: "Silahkan isi username kamu !",
                      suffixIcon: const Icon(
                        Icons.lock,
                        color: Colors.greenAccent,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.grey[400]!,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return "Tolong Masukan nama kamu";
                      }
                      if (value!.length < 4) {
                        return "Masukan karakter lebih dari 4";
                      }
                      return null;
                    },
                    onFieldSubmitted: (String? textSubmited) {},
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(color: Colors.blue),
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      //Noted : lakukan sesuatu
                    } else {
                      return;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12.0),
                    primary: Colors.red,
                    // backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
