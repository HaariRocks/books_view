import 'package:flutter/material.dart';

class ForYouItem extends StatelessWidget {
  final String title;
  final String image;
  ForYouItem({this.title = 'Book Name', this.image});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.25, color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.share,
                color: Colors.black,
                size: 20,
              ),
              onTap: () {
                print("tapped");
              },
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'assets/category_images/no_images.png',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "By Author Name",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.black26,
                      onPressed: () {
                        /*...*/
                      },
                      child: Row(
                        children: <Widget>[
                          Text(
                            "\$ 500",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "3000",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
