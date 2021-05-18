import 'package:flutter/cupertino.dart';

class MenuModel{
  final String name;
  final String menu;
  final String rating;
  final String pic;
  final String arrivedetail;
  final String favorites;

  MenuModel(this.name, this.menu, this.rating, this.pic, this.arrivedetail,
      this.favorites);
}
List<MenuModel> menuData =[
new MenuModel('Kichi Coffee & Drink', 'fast food, Drink, coffee,pizz..', '4.5(1,256)', 'https://lh3.googleusercontent.com/2L4KUuN8fXnkwh2S-C3exr2b-oTe3mIaspcB4RO6XG026yLYFmEMinLZCDOBxftDiZU=w200-h300-rw', '30mins',
  '')
];