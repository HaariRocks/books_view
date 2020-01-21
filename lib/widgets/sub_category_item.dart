import 'package:flutter/material.dart';

class SubCategoryItem extends StatelessWidget {
  final String title;
  SubCategoryItem({this.title});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          maxLines: 1,
        ),
      ),
    );
  }
}
