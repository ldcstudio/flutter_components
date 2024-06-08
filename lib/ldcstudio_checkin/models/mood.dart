enum MoodCategory {
  pro,
  con,
  neutral,
}

class Mood {
  final String emotion;
  MoodCategory moodCategory;

  Mood({
    required this.emotion,
    this.moodCategory = MoodCategory.neutral,
  });
}
