class BookCardModel {
  String image;
  String title;
  String author;
  int bookmrp;
  int sellingmrp;

  BookCardModel({
    this.image,
    this.title,
    this.author,
    this.bookmrp,
    this.sellingmrp,
  });
}

List<BookCardModel> bookcard = [
  BookCardModel(
      title: 'Mathematics',
      image: 'assets/category_images/no_images.png',
      author: 'Author_1',
      bookmrp: 500,
      sellingmrp: 200),
  BookCardModel(
      title: 'Physics',
      image: 'assets/category_images/no_images.png',
      author: 'Author_1',
      bookmrp: 400,
      sellingmrp: 100),
  BookCardModel(
      title: 'Science',
      image: 'assets/category_images/no_images.png',
      author: 'Author_1',
      bookmrp: 2050,
      sellingmrp: 1100),
  BookCardModel(
      title: 'Social',
      image: 'assets/category_images/no_images.png',
      author: 'Author_1',
      bookmrp: 1500,
      sellingmrp: 1200),
  BookCardModel(
      title: 'Arts',
      image: 'assets/category_images/no_images.png',
      author: 'Author_1',
      bookmrp: 5100,
      sellingmrp: 2000),
];
