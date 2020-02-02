import 'package:books_view/widgets/sub_category_item.dart';
import 'package:flutter/material.dart';

class SubCategoryPage extends StatelessWidget {
  final List<String> items;
  SubCategoryPage({this.items});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        padding: EdgeInsets.all(15),
        childAspectRatio: 3,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: items.map((key) => buildItem(context, key)).toList(),
      ),
    );
  }

  Widget buildItem(BuildContext context, String key) {
    return GestureDetector(
        child: SubCategoryItem(title: key),
        onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Material()),
            ));
  }
}
