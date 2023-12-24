import 'package:flutter/material.dart';

class FollowInterestsWarp extends StatelessWidget {
  FollowInterestsWarp({super.key});

  List list = [
    {
      "title": "Football",
      "icon": Icons.sports_soccer_sharp,
      "color": Colors.brown
    },
    {
      "title": "Sports",
      "icon": Icons.sports_baseball,
      "color": Colors.deepOrange
    },
    {
      "title": "Arts and design",
      "icon": Icons.art_track,
      "color": Colors.deepOrange
    },
    {"title": "TV", "icon": Icons.tv, "color": Colors.blueAccent},
    {
      "title": "Entertainment",
      "icon": Icons.gif_box_outlined,
      "color": Colors.deepPurple
    },
    {
      "title": "World",
      "icon": Icons.sports_basketball_outlined,
      "color": Colors.green
    },
    {"title": "Bangladesh", "icon": Icons.tv, "color": Colors.green},
    {"title": "Food", "icon": Icons.no_meals, "color": Colors.green},
    {"title": "Vehicles", "icon": Icons.car_crash, "color": Colors.brown},
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 6.0,
      runSpacing: 6.0,
      children: list.map((item) {
        return Chip(
          shape: const RoundedRectangleBorder(
            side: BorderSide(width: 1,
                color: Color(0x86EAEAEA)),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                  radius: 10,
                  backgroundColor: item['color'],
                  child: Icon(
                    item['icon'],
                    size: 10,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 8,
              ),
              Text(item['title'],
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w500)),
            ],
          ),
        );
      }).toList(),
    );
  }
}
