import 'package:books_view/catagory/sub_category_page.dart';
import 'package:books_view/util/categories_details.dart';
import 'package:books_view/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CatageryPage extends StatefulWidget {
  @override
  _CatageryPageState createState() => _CatageryPageState();
}

class _CatageryPageState extends State<CatageryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: GridView.count(
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        children:
            categoryDetails.keys.map((key) => buildItem(context, key)).toList(),
      ),
    );
  }

  Widget buildItem(BuildContext context, String key) {
    return GestureDetector(
        child: CategoryItem(
          title: key,
        ),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => categoryDetails[key] == null
                  ? Material()
                  : SubCategoryPage(items: categoryDetails[key]),
            )));
  }
}
