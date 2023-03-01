// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:mtg_ssm/repository/repository_cards/notifier_cards.dart';
import 'package:mtg_ssm/ui/screens/screen_cards/components/loader_cards.dart';
import 'package:mtg_ssm/ui/screens/screen_cards/components/view_cards.dart';

class ScreenCards extends StatelessWidget {
  const ScreenCards({super.key});

  @override
  Widget build(BuildContext context) {
    final notifierCards = Provider.of<NotifierCards>(context);

    if (!notifierCards.isLoaded) return const LoaderCards();

    return ViewCards(cards: notifierCards.cards);
  }
}
