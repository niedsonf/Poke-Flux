import 'package:flutter/material.dart';
import 'package:flux/shared/themes/app_colors.dart';
import 'package:flux/shared/themes/app_text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> fade;
  late Animation<double> scale;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    fade = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
    scale = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            ScaleTransition(
              scale: scale,
              child: Container(
                padding: EdgeInsets.all(16),
                color: AppColors.primary,
                child: Column(
                  children: [
                    Text("Why use Flux?", style: TextStyles.titleRegular, textAlign: TextAlign.center),
                    SizedBox(height: 20),
                    Text("Organize your daily tasks", style: TextStyles.trailingRegular),
                    SizedBox(height: 10),
                    Text("Save your meetings links", style: TextStyles.trailingRegular),
                    SizedBox(height: 10),
                    Text("Get notified when deadline comes", style: TextStyles.trailingRegular),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
