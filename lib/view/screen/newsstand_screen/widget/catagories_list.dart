import 'package:flutter/material.dart';

import '../../../../utils/app_string.dart';
import '../../../widget/custom_text.dart';
import 'entertainment_listview.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key, required this.color, required this.categories});

  Color color;

  String categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomText(
            title: categories,
            fontSize: 16,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
              height: 185,
              child: EntertainmentListView(
                color: color,
              )),
          const SizedBox(
            height: 16,
          ),
          const Divider(),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  title: "${AppString.more} $categories", color: Colors.blue),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
