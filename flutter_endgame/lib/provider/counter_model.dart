import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  var number = 0;

  void tangSo(){
      number++;

      notifyListeners();
  }

}

class UserModel extends ChangeNotifier {}

class ProductModel extends ChangeNotifier {}
