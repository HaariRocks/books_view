import 'package:books_view/util/categories_details.dart';
import 'package:books_view/widgets/foryou_item.dart';
import 'package:flutter/material.dart';

class ForYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: ListView(
        children:
            categoryDetails.keys.map((key) => buildItem(context, key)).toList(),
      ),
    );
  }

  Widget buildItem(BuildContext context, String key) {
    return GestureDetector(
      child: ForYouItem(
        title: key,
      ),
    );
  }
}
