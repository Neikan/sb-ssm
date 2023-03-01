// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:mtg_ssm/initialization.dart';
import 'package:mtg_ssm/repository/repository_cards/notifier_cards.dart';
import 'package:mtg_ssm/repository/repository_cards/repository_cards_imp.dart';
import 'package:mtg_ssm/repository/repository_cart/notifier_cart.dart';
import 'package:mtg_ssm/repository/repository_cart/repository_cart_imp.dart';
import 'package:mtg_ssm/ui/components/app.dart';

void main() {
  initializeServices();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NotifierCards(const RepositoryCardsImp()),
        ),
        ChangeNotifierProvider(
          create: (_) => NotifierCart(const RepositoryCartImp()),
        ),
      ],
      child: const App(),
    ),
  );
}
