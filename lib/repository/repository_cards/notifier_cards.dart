// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_ssm/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_ssm/repository/repository_cards/repository_cards.dart';

class NotifierCards with ChangeNotifier {
  final RepositoryCards _repositoryCards;

  NotifierCards(this._repositoryCards) {
    _init();
  }

  List<MtgCardInfo> _cards = [];

  bool get isLoaded => _cards.isNotEmpty;
  List<MtgCardInfo> get cards => _cards;

  Future<void> _init() async {
    _cards = await _repositoryCards.load();
    notifyListeners();
  }
}
