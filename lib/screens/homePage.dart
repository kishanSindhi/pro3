import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro3/screens/login.dart';
import 'package:pro3/widgets/buttonn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.user}) : super(key: key);

  final String user;
  @override
  Widget build(BuildContext context) {
    void _logOut() {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Welcome $user',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Buttonn(func: _logOut, data: 'Logout')
          ],
        ),
      ),
    );
  }
}
