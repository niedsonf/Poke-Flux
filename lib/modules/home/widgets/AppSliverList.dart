
import 'package:flutter/material.dart';

class AppSliverList extends StatefulWidget {
  const AppSliverList({Key? key}) : super(key: key);

  @override
  _AppSliverListState createState() => _AppSliverListState();
}

class _AppSliverListState extends State<AppSliverList> {

    final List<String> sliverTitle = [
    "Berries",
    "Contests",
    "Encounters",
    "Evolution",
    "Games",
    "Items",
    "Machines",
    "Moves",
    "Locations",
    "Pokemon",
    "Utility"
  ];
  final List<String> sliverAsset = [];
  final List<Color> sliverColor = [];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          color: sliverColor[index],
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text(sliverTitle[index]), Image.asset(sliverAsset[index])],
          ),
        );
      }, childCount: 11),
    );
  }
}
