import 'package:flutter/material.dart';
import 'package:flutter_components/ldcstudio_checkin/models/mood.dart';
import 'package:flutter_components/ldcstudio_checkin/utils/mood_helpers.dart';
import 'package:flutter_components/ldcstudio_checkin/utils/styles.dart';

class MoodIcon extends StatelessWidget {
  const MoodIcon(this.mood, {super.key, required this.curMood});

  final Mood mood;
  final MoodCategory curMood;

  @override
  Widget build(BuildContext context) {
    const radius = 24.0;

    return CircleAvatar(
      radius: radius,
      backgroundColor: getBackgroundMoodColour(curMood),
      foregroundColor: getInnerForegroundColour(curMood),
      child: Text(
        mood.emotion.substring(0, 2),
        style: kTitleSmall(FontFamily.nunito),
      ),
    );
  }
}

class SelectedMoodIcon extends StatefulWidget {
  const SelectedMoodIcon(this.mood, {super.key});

  final Mood mood;

  @override
  State<SelectedMoodIcon> createState() => _SelectedMoodIconState();
}

class _SelectedMoodIconState extends State<SelectedMoodIcon> {
  static const maxTextWidth = 70.0;
  MoodCategory moodCategory = MoodCategory.neutral;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (widget.mood.moodCategory == MoodCategory.pro) {
                moodCategory = toggleProMoodCategory(moodCategory);
              } else {
                moodCategory = toggleConMoodCategory(moodCategory);
              }
            });
          },
          child: MoodIcon(widget.mood, curMood: moodCategory),
        ),
        const SizedBox(height: 4.0),
        SizedBox(
          width: maxTextWidth,
          child: Align(
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                widget.mood.emotion,
                style: kLabelMedium(FontFamily.nunito).copyWith(
                  color: getFontMoodColour(moodCategory),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
