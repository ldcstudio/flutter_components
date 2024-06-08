import 'package:flutter/material.dart';
import 'package:flutter_components/ldcstudio_checkin/models/mood.dart';
import 'package:flutter_components/ldcstudio_checkin/utils/colours.dart';

MoodCategory toggleProMoodCategory(MoodCategory moodCategory) {
  if (moodCategory == MoodCategory.neutral) {
    return MoodCategory.pro;
  } else {
    return MoodCategory.neutral;
  }
}

MoodCategory toggleConMoodCategory(MoodCategory moodCategory) {
  if (moodCategory == MoodCategory.neutral) {
    return MoodCategory.con;
  } else {
    return MoodCategory.neutral;
  }
}

Color getBackgroundMoodColour(MoodCategory moodCategory) {
  if (moodCategory == MoodCategory.pro) {
    return kPrimary;
  } else if (moodCategory == MoodCategory.con) {
    return kSecondary;
  } else {
    return kOnSurfaceLight;
  }
}

Color getFontMoodColour(MoodCategory moodCategory) {
  if (moodCategory == MoodCategory.pro) {
    return kPrimary;
  } else if (moodCategory == MoodCategory.con) {
    return kSecondary;
  } else {
    return Colors.white;
  }
}

Color getInnerForegroundColour(MoodCategory moodCategory) {
  if (moodCategory != MoodCategory.neutral) {
    return kSurface;
  } else {
    return Colors.white;
  }
}
