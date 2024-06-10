import 'package:flutter/material.dart';
import 'package:flutter_components/revolut_crypto_newly_added/data/tokens.dart';
import 'package:flutter_components/revolut_crypto_newly_added/utils/colours.dart';
import 'package:flutter_components/revolut_crypto_newly_added/widgets/token_item.dart';

class NewlyAddedTokensCard extends StatelessWidget {
  const NewlyAddedTokensCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      decoration: BoxDecoration(
        color: kOnSurface,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(tokens.length, (index) {
          return TokenItem(
            tokens[index],
          );
        }),
      ),
    );
  }
}
