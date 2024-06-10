import 'package:flutter/material.dart';
import 'package:flutter_components/revolut_crypto_newly_added/models/token.dart';
import 'package:flutter_components/revolut_crypto_newly_added/utils/colours.dart';
import 'package:flutter_components/revolut_crypto_newly_added/utils/styles.dart';

class TokenItem extends StatelessWidget {
  const TokenItem(this.token, {super.key});

  final Token token;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundColor: kPrimary,
            child: Image.asset(
              'assets/revolut_crypto_newly_added/${token.assetName}',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(token.name, style: kLabelLarge().copyWith(color: kPrimary)),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: kSecondary,
                  size: 24.0,
                ),
              ),
              Text(
                '${token.percent.toStringAsFixed(2)}%',
                style: kLabelMedium().copyWith(color: kSecondary),
              ),
            ],
          )
        ],
      ),
    );
  }
}
