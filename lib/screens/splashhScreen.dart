// import 'package:flutter/material.dart';
// import 'package:pro3/screens/login.dart';
// import 'package:splashscreen/splashscreen.dart';
//
// class SplashScreenn extends StatefulWidget {
//   const SplashScreenn({Key? key}) : super(key: key);
//
//   @override
//   _SplashScreennState createState() => _SplashScreennState();
// }
//
// class _SplashScreennState extends State<SplashScreenn> {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 7,
//       title: const Text(
//         "Loading",
//         style: TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//         ),
//         textAlign: TextAlign.center,
//       ),
//       image: Image.network(
//         "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmFuZG9tfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
//       ),
//       backgroundColor: Colors.blue,
//       loaderColor: Colors.white,
//       loadingText: const Text('loading text'),
//       photoSize: 200,
//       navigateAfterSeconds: const Login(),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro3/screens/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      CupertinoPageRoute(
        builder: (context) => const Login(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: Image.network(
              "https://logowik.com/content/uploads/images/flutter5786.jpg"),
        ),
      ),
    );
  }
}
