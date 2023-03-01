// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:mtg_ssm/consts/keys.dart';
import 'package:mtg_ssm/consts/translations.dart';
import 'package:mtg_ssm/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_ssm/repository/repository_cards/notifier_cards.dart';
import 'package:mtg_ssm/repository/repository_cart/notifier_cart.dart';
import 'package:mtg_ssm/ui/components/app_header.dart';
import 'package:mtg_ssm/ui/components/app_text.dart';
import 'package:mtg_ssm/ui/screens/screen_cards/components/list_cards/list_card.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    final notifierCart = Provider.of<NotifierCart>(context);
    final cards = Provider.of<NotifierCards>(context).cards;

    final cart = notifierCart.cart;
    final cardsToList = <MtgCardInfo>[];

    for (final card in cards) {
      if (cart.contains(card.id)) {
        cardsToList.add(card);
      }
    }

    return Scaffold(
      appBar: AppHeader(
        title: labelsCart[keyTitle]!,
      ),
      body: SafeArea(
        child: cart.isEmpty
            ? Center(
                child: AppText(
                  text: labelsCart[keyContent]!,
                  fontSize: 16,
                ),
              )
            : ListCards(cards: cardsToList),
      ),
    );
  }
}
