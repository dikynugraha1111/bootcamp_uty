import 'package:flutter/material.dart';

class Latihan2Task extends StatefulWidget {
  const Latihan2Task({super.key});

  @override
  State<Latihan2Task> createState() => _Latihan2TaskState();
}

class _Latihan2TaskState extends State<Latihan2Task> {
  static const Color blackColor = Color(0xFF1c1b20);
  static const Color orangeColor = Color(0xFFff8b39);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 64.0,
            horizontal: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: blackColor,
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              const Text(
                "Welcome\nback!",
                style: TextStyle(
                  color: blackColor,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.5,
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                width: 35.0,
                height: 10.0,
                decoration: BoxDecoration(
                  color: orangeColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                cursorColor: orangeColor,
                decoration: InputDecoration(
                  labelText: "Masukan email",
                  floatingLabelStyle: const TextStyle(
                    color: orangeColor,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: "Silahkan isi email kamu !",
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
                      color: orangeColor,
                    ),
                  ),
                ),
                validator: (emailValue) {
                  if (emailValue?.isEmpty ?? true) {
                    return "Email tidak boleh kosong !";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                controller: passwordController,
                obscureText: isObscurePassword,
                cursorColor: orangeColor,
                decoration: InputDecoration(
                  labelText: "Masukan Password",
                  floatingLabelStyle: const TextStyle(
                    color: orangeColor,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: "Silahkan isi password kamu !",
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isObscurePassword = !isObscurePassword;
                        });
                      },
                      child: Icon(isObscurePassword
                          ? Icons.lock
                          : Icons.lock_open_rounded)),
                  suffixIconColor: orangeColor,
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
                      color: orangeColor,
                    ),
                  ),
                ),
                validator: (passwordValue) {
                  if (passwordValue?.isEmpty ?? true) {
                    return "Password tidak boleh kosong !";
                  }
                  return null;
                },
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (!formKey.currentState!.validate()) {
                      return;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    primary: orangeColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
