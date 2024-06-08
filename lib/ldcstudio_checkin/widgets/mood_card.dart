import 'package:flutter/material.dart';
import 'package:flutter_components/ldcstudio_checkin/data/moods.dart';
import 'package:flutter_components/ldcstudio_checkin/models/mood.dart';
import 'package:flutter_components/ldcstudio_checkin/utils/colours.dart';
import 'package:flutter_components/ldcstudio_checkin/utils/styles.dart';
import 'package:flutter_components/ldcstudio_checkin/widgets/mood_icon.dart';

class MoodCard extends StatefulWidget {
  const MoodCard({super.key});

  @override
  State<MoodCard> createState() => _MoodCardState();
}

class _MoodCardState extends State<MoodCard> {
  static const collapsedPageViewHeight = 80.0;
  static const collapsedCardHeight = 168.0;
  final pageController = PageController();
  bool isCollapsed = true;
  bool isChillModeSelected = true;

  Wrap buildMoodPage(List<Mood> moods) {
    return Wrap(
      runSpacing: 8.0,
      alignment: WrapAlignment.center,
      children: List.generate(moods.length, (index) {
        return SelectedMoodIcon(
          moods[index],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final headerText = isChillModeSelected ? "Genre: Chill" : "Genre: SadBoy";
    final expandedPageViewHeight = collapsedPageViewHeight +
        (collapsedPageViewHeight * (chillMoods.length / 5.01).floor());
    final expandedCardHeight =
        collapsedCardHeight - collapsedPageViewHeight + expandedPageViewHeight;

    return Container(
      height: isCollapsed ? collapsedCardHeight : expandedCardHeight,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: kOnSurface,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 32.0),
              Text(
                headerText,
                style: kTitleMedium(FontFamily.rubik)
                    .copyWith(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isCollapsed = !isCollapsed;
                  });
                },
                child: isCollapsed
                    ? const Icon(
                        Icons.expand_circle_down,
                        size: 32.0,
                        color: kOnSurfaceGrey,
                      )
                    : const RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.expand_circle_down,
                          size: 32.0,
                          color: kOnSurfaceGrey,
                        ),
                      ),
              )
            ],
          ),
          const SizedBox(height: 12.0),
          SizedBox(
            height:
                isCollapsed ? collapsedPageViewHeight : expandedPageViewHeight,
            child: PageView(
              controller: pageController,
              onPageChanged: (_) {
                setState(() {
                  isChillModeSelected = !isChillModeSelected;
                });
              },
              children: [
                buildMoodPage(chillMoods),
                buildMoodPage(sadboyMoods),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          PageIndicator(isChillModeSelected)
        ],
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator(this.isChillModeSelected, {super.key});
  static const indicatorRadius = 3.0;
  final bool isChillModeSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 3.0,
          backgroundColor:
              isChillModeSelected ? kOnSurfaceGrey : kOnSurfaceLight,
        ),
        const SizedBox(width: 8.0),
        CircleAvatar(
          radius: 3.0,
          backgroundColor:
              isChillModeSelected ? kOnSurfaceLight : kOnSurfaceGrey,
        ),
      ],
    );
  }
}
