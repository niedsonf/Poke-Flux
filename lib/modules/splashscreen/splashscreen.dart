import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flux/shared/themes/app_colors.dart';
import 'package:flux/shared/themes/app_text_styles.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> fade;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    fade = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: FadeTransition(
            opacity: fade,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome to", style: TextStyles.titleRegular),
                  SizedBox(height: 20),
                  Text("Poke Flux", style: TextStyles.titleHome),
                  SizedBox(height: 70),
                  FutureBuilder(
                    future: Firebase.initializeApp(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text(
                            "It was not possible to connect to Firebase",
                            style: TextStyles.titleRegular);
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        controller.forward().then((_) =>
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/home', (route) => false));
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Connecting to Firebase...",
                              style: TextStyles.trailingRegular),
                          SizedBox(height: 20),
                          CircularProgressIndicator(
                            color: AppColors.secondary,
                            strokeWidth: 1,
                          )
                        ],
                      );
                    },
                  )
                ],
              ),
            )));
  }
}
