import 'package:books_view/util/book_card_model.dart';

class BookCardService {
  Future<List<BookCardModel>> grtAds() {
    return Future<List<BookCardModel>>.delayed(
        Duration(seconds: 5), () => bookcard);
  }
}
