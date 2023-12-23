import 'package:flutter/material.dart';

class RecentlyGridView extends StatelessWidget {
  RecentlyGridView({super.key});

  List list = [
    {
      "title": "Libary",
      "image": Icons.phone_android_rounded,
    },
    {
      "title": "save Stories",
      "image": Icons.save,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var item = list[index];
        return Container(
          width: 40,
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                width: 40,
                height: 50,
                decoration: const BoxDecoration(
                    color: Color(0x30B4B8BD),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child:
                    SizedBox(width: 24, height: 24, child: Icon(item['image'])),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                item['title'],
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
