// import 'package:flutter/material.dart';

class ForyouModel {
  static const itemNames = [
    'Fiction',
    'Crime',
    'Thriller',
    'Romance',
    'Adventure',
    'biology',
    'calculator',
    'chemistry',
    'comic',
    'engineering',
    'history',
    'law',
    'medicine'
  ];
  // Item getById(int id) => Item(id, itemNames[id % itemNames.length]);

  // Item getByPosition(int position) {
  //   // In this simplified case, an item's position in the catalog
  //   // is also its id.
  //   return getById(position);
  // }

  Data getNames(int index) => Data(itemNames[index]);
}

// @immutable
// class Item {
//   final int id;
//   final String name;
//   Item(this.id, this.name);
//   @override
//   int get hashCode => id;
//   @override
//   bool operator ==(Object other) => other is Item && other.id == id;
// }

class Data {
  final String name;
  Data(this.name);
}
