import 'package:flutter/material.dart';
import 'package:flutter_components/revolut_crypto_newly_added/utils/colours.dart';
import 'package:flutter_components/revolut_crypto_newly_added/utils/styles.dart';
import 'package:flutter_components/revolut_crypto_newly_added/widgets/newly_added_tokens_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSurface,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kOnSurface,
        title: Text(
          'Revolut Crypto Newly Added',
          style: kTitleMedium().copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: NewlyAddedTokensCard(),
      ),
    );
  }
}
