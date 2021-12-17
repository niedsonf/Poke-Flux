import 'package:flutter/material.dart';
import 'package:flux/modules/splashscreen/splashscreen.dart';
import 'package:flux/shared/routes/route.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: '/splash',
      onGenerateRoute: AppRoute.generateRoute,
    );
  }
}
