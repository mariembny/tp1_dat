import 'package:flutter/material.dart';

class ShoppingCart {
  List<double> _prices = [];
  double get total {
    double sum = 0.0;
    for (var price in _prices) {
      sum += price;
    }
    return sum;
  }

  set prices(List<double> newPrices) {
    if (newPrices.every((price) => price > 0.0)) {
      _prices = newPrices;
    } else {
      throw ArgumentError('La liste de prix doit contenir des réels > 0');
    }
  }
}
