// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_ssm/repository/repository_cart/repository_cart.dart';

class NotifierCart with ChangeNotifier {
  final RepositoryCart _repositoryCart;

  NotifierCart(this._repositoryCart);

  void add(String cardId) {
    _repositoryCart.add(cardId);
    notifyListeners();
  }

  void remove(String cardId) {
    _repositoryCart.remove(cardId);
    notifyListeners();
  }

  List<String> get cart => _repositoryCart.data;
}
