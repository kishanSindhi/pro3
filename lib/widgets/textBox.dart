import 'package:flutter/material.dart';

class TextBoxx extends StatelessWidget {
  const TextBoxx(
      {Key? key,
      required this.hint,
      required this.controllerr,
      required this.password})
      : super(key: key);
  final String hint;
  final TextEditingController controllerr;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.name,
      style: const TextStyle(fontSize: 20),
      controller: controllerr,
      decoration: InputDecoration(
        hintText: hint,
      ),
      obscureText: password,
    );
  }
}
