import 'package:books_view/constants/constants.dart';
import 'package:flutter/material.dart';

class ForyouPage extends StatefulWidget {
  @override
  _ForyouPageState createState() => _ForyouPageState();
}

class _ForyouPageState extends State<ForyouPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ReusableListcard(),
        ReusableListcard(),
        ReusableListcard(),
        ReusableListcard(),
        ReusableListcard(),
        ReusableListcard(),
      ],
    );
  }
}

class ReusableListcard extends StatefulWidget {
  @override
  _ReusableListcardState createState() => _ReusableListcardState();
}

class _ReusableListcardState extends State<ReusableListcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.share,
                color: Colors.amber[600],
                size: 35,
              ),
              onTap: () {
                print("tapped");
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.live_help,
                  size: 80,
                ),
                sizedBox,
                Text(
                  "book!",
                  style: optionStyle1,
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.add_box,
                        size: 40,
                        color: Colors.amber[600],
                      ),
                      onTap: () {
                        print("tapped");
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      color: Colors.amber[600],
                      textColor: Colors.black45,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.amber[100],
                      onPressed: () {
                        /*...*/
                      },
                      child: Row(
                        children: <Widget>[
                          Text(
                            "\$ 500",
                            style: optionStyle1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "300",
                            style: optionStyle1.copyWith(
                                color: Colors.black54,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.amber[600],
                        size: 40,
                      ),
                      onTap: () {
                        print("tapped");
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
