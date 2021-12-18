import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flux/modules/home/widgets/AppSliverList.dart';
import 'package:flux/shared/themes/app_colors.dart';
import 'package:flux/shared/themes/app_text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
            ),
            backgroundColor: AppColors.primary,
            pinned: false,
            snap: false,
            floating: true,
            expandedHeight: 160,
            title: Text.rich(
                TextSpan(
                    text: "Welcome, ",
                    style: TextStyles.titleListTile,
                    children: [
                      TextSpan(text: "Fernando", style: TextStyles.titleRegular)
                    ]),
                textAlign: TextAlign.start),
          ),
          AppSliverList()
        ],
      ),
    );
  }
}
