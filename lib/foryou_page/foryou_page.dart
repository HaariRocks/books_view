import 'package:books_view/util/foryou_details.dart';
import 'package:books_view/widgets/foryou_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForyouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => MyListItem(index),
              childCount: 12,
            ),
          )
        ],
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  final int index;
  MyListItem(this.index);

  @override
  Widget build(BuildContext context) {
    var foryou = Provider.of<ForyouModel>(context);
    var item = foryou.getNames(index);
    return Container(
      child: ForYouItem(
        title: item.name,
      ),
    );
  }
}
