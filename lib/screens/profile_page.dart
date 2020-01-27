import 'package:books_view/constants/constants.dart';
import 'package:books_view/util/choice_tabs.dart';
import 'package:flutter/material.dart';

const List<Choice> choices = <Choice>[
  Choice(title: 'BooksSelf'),
  Choice(title: 'Likes'),
  Choice(title: 'Collections'),
];
const SizedBox sizedBox = SizedBox(
  height: 10,
);

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          // margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.amber[100],
              ),
              sizedBox,
              Text(
                "user_name",
                style: textStyle,
              ),
              sizedBox,
              Text(
                "user_name@mail.com",
                style: textStyle,
              ),
              sizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "5",
                  ),
                  Text(
                    "5",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "following",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  Text(
                    "followers",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ],
              ),
              sizedBox,
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.amber[200],
                    labelColor: Colors.amber[500],
                    unselectedLabelColor: Colors.black54,
                    isScrollable: true,
                    tabs: choices.map<Widget>((Choice choice) {
                      return Tab(
                        child: Container(
                          child: Text(
                            choice.title,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Container(
                    height: screenHeight * 0.75,
                    child: TabBarView(
                      controller: _tabController,
                      children: <Widget>[
                        Center(
                          child: Text("1"),
                        ),
                        Center(
                          child: Text("2"),
                        ),
                        Center(
                          child: Text("3"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
