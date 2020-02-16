import 'package:books_view/book_card/book_card.dart';
import 'package:books_view/categories/categorie_page.dart';
import 'package:books_view/constants/constants.dart';
import 'package:books_view/foryou_page/foryou_page.dart';
// import 'package:books_view/new_page/new_page.dart';
import 'package:flutter/material.dart';

const List<String> choices = [
  'ForYou',
  'Catagory',
  'New',
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.amber[200],
            labelColor: Colors.amber[500],
            unselectedLabelColor: Colors.black54,
            isScrollable: true,
            tabs: choices
                .map<Widget>(
                  (choice) => Tab(
                    child: Container(
                      child: Text(
                        choice,
                        style: tabsStyle,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                ForyouPage(),
                CatageryPage(),
                BookCardPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
