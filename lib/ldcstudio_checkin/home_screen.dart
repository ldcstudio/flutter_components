import 'package:flutter/material.dart';
import 'package:flutter_components/ldcstudio_checkin/utils/colours.dart';
import 'package:flutter_components/ldcstudio_checkin/utils/styles.dart';
import 'package:flutter_components/ldcstudio_checkin/widgets/mood_card.dart';

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
          'Checkin Mood Card',
          style: kTitleMedium(FontFamily.nunito).copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: MoodCard(),
      ),
    );
  }
}
