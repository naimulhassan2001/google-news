import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_news/view/widget/custom_text.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.circle,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      CustomText(
                        title: "chennel name",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  const Text(
                    "Recent Match Report - New Zealand vs banglasdesh #rd ODI 2023/24",
                    maxLines: 2,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(""),
                      CustomText(
                        title: "6 hours ago",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/circket.jpg",
                fit: BoxFit.fill,
              ))
        ],
      ),
    );
  }
}
