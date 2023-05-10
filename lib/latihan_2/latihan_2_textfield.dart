import 'package:flutter/material.dart';

class Latihan2TextField extends StatefulWidget {
  const Latihan2TextField({super.key});

  @override
  State<Latihan2TextField> createState() => _Latihan2TextFieldState();
}

class _Latihan2TextFieldState extends State<Latihan2TextField> {
  final TextEditingController textController = TextEditingController();
  final GlobalKey<FormState> textKey = GlobalKey<FormState>();

  @override
  void initState() {
    textController.text = "";
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Form(
            key: textKey,
            child: TextFormField(
              controller: textController,
              maxLength: 30,
              cursorColor: Colors.greenAccent,
              decoration: InputDecoration(
                labelText: "Masukan Username",
                floatingLabelStyle: const TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
                hintText: "Silahkan isi username kamu !",
                suffixIcon: const Icon(Icons.lock),
                suffixIconColor: Colors.greenAccent,
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
              validator: (vlaue) {
                return null;
              },
            ),
          ),
        ),
      ),
    );
  }
}
