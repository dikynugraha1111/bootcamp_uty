import 'dart:developer';

import 'package:flutter/material.dart';

class Latihan2TextfieldNew extends StatefulWidget {
  const Latihan2TextfieldNew({Key? key}) : super(key: key);

  @override
  State<Latihan2TextfieldNew> createState() => _Latihan2TextfieldNewState();
}

class _Latihan2TextfieldNewState extends State<Latihan2TextfieldNew> {
  final TextEditingController textController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        body: Padding(
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
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
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
                log(value.toString());
                if (value?.isEmpty ?? true) {
                  return "Tolong Masukan nama kamu";
                }
                if (value!.length < 4) {
                  return "Masukan karakter lebih dari 4";
                }
                return null;
              },
              onFieldSubmitted: (String? textSubmited) {
                if (formKey.currentState!.validate()) {
                  //Noted : lakukan sesuatu
                } else {
                  return;
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
