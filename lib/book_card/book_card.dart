import 'package:books_view/book_card/book_card_service.dart';
import 'package:books_view/util/book_card_model.dart';
import 'package:books_view/widgets/book_card_item.dart';
import 'package:flutter/material.dart';

class BookCardPage extends StatefulWidget {
  @override
  _BookCardPageState createState() => _BookCardPageState();
}

class _BookCardPageState extends State<BookCardPage> {
  Future<List<BookCardModel>> _bookcard;
  @override
  void initState() {
    super.initState();
    _bookcard = BookCardService().grtAds();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: FutureBuilder(
        future: _bookcard,
        builder: (BuildContext context,
            AsyncSnapshot<List<BookCardModel>> snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, i) => CardItem(
                        image: snapshot.data[i].image,
                        author: snapshot.data[i].author,
                        mrp: snapshot.data[i].sellingmrp,
                        smrp: snapshot.data[i].bookmrp,
                        title: snapshot.data[i].title,
                      ))
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
