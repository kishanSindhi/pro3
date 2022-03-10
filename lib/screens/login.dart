import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pro3/screens/homePage.dart';
import 'package:pro3/widgets/buttonn.dart';
import 'package:pro3/widgets/textBox.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final uNameController = TextEditingController();
    final passController = TextEditingController();
    void _login() {
      if ((uNameController.text == 'admin') &&
          (passController.text == 'admin')) {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => HomePage(user: uNameController.text),
          ),
        );
      } else {
        Fluttertoast.showToast(
          msg: "Enter valid credentials",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          fontSize: 15,
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextBoxx(
              hint: 'Enter Username',
              controllerr: uNameController,
              password: false,
            ),
            const SizedBox(height: 20),
            TextBoxx(
              hint: 'Enter your password',
              controllerr: passController,
              password: true,
            ),
            const SizedBox(height: 20),
            Buttonn(
              func: _login,
              data: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
