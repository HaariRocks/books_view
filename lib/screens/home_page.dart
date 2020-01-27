import 'package:books_view/catagory/catagory_page.dart';
import 'package:books_view/constants/constants.dart';
import 'package:books_view/tabbars/foryou_page.dart';
import 'package:books_view/tabbars/new_page.dart';
import 'package:books_view/util/choice_tabs.dart';
import 'package:flutter/material.dart';

const List<Choice> choices = <Choice>[
  Choice(title: 'ForYou'),
  Choice(title: 'Catagory'),
  Choice(title: 'New'),
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
                  (Choice choice) => Tab(
                    child: Container(
                      child: Text(
                        choice.title,
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
                ForYou(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
