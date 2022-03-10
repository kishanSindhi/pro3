import 'package:flutter/material.dart';

class Buttonn extends StatelessWidget {
  const Buttonn({Key? key, required this.func, required this.data})
      : super(key: key);

  final String data;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      child: Text(data),
    );
  }
}
