// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:mtg_ssm/repository/repository_cart/notifier_cart.dart';

class ButtonAddToCart extends StatelessWidget {
  final String cardId;

  const ButtonAddToCart({
    super.key,
    required this.cardId,
  });

  @override
  Widget build(BuildContext context) {
    final notifierCart = Provider.of<NotifierCart>(context);
    final cart = notifierCart.cart;

    if (cart.contains(cardId)) {
      return IconButton(
        icon: Icon(
          Icons.remove_shopping_cart_outlined,
          color: Colors.red.shade800,
        ),
        onPressed: () {
          notifierCart.remove(cardId);
        },
      );
    }

    return IconButton(
      icon: Icon(
        Icons.add_shopping_cart_outlined,
        color: Colors.green.shade800,
      ),
      onPressed: () {
        notifierCart.add(cardId);
      },
    );
  }
}
