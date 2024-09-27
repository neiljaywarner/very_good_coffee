import 'package:flutter/material.dart';
import 'package:very_good_coffee/l10n/l10n.dart';

class FavoritesWidget extends StatelessWidget {
  const FavoritesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(context.l10n.noFavoritesMessage);
  }
}
