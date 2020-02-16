import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String image;
  final int mrp;
  final String author;
  final int smrp;
  CardItem(
      {this.title = 'Book Name', this.image, this.author, this.mrp, this.smrp});
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
                  height: 200,
                  width: 200,
                  child: image == null
                      ? Image.asset(
                          image,
                          fit: BoxFit.cover,
                        )
                      : Image.network(image, fit: BoxFit.cover),
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
                  author,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                _getActionsRow()
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getActionsRow() {
    return Row(
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.black26,
          onPressed: () {
            /*...*/
          },
          child: Row(
            children: <Widget>[
              Text(
                "\$ $mrp",
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "$smrp",
                style: TextStyle(decoration: TextDecoration.lineThrough),
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
    );
  }
}
