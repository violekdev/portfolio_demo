import 'package:flutter/material.dart';

class ResumeWidget extends StatelessWidget {
  final Color? bgColor;
  const ResumeWidget({
    Key? key,
    this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      height: 800, //961
      padding: const EdgeInsets.symmetric(horizontal: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Skills",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SkillTileWidget(skillName: "Python", skillProgress: 70),
                  SkillTileWidget(skillName: "Python", skillProgress: 10),
                  SkillTileWidget(skillName: "Python", skillProgress: 50),
                  SkillTileWidget(skillName: "Python", skillProgress: 40),
                ],
              ),
              Column(
                children: const [
                  SkillTileWidget(skillName: "Python", skillProgress: 30),
                  SkillTileWidget(skillName: "Python", skillProgress: 90),
                  SkillTileWidget(skillName: "Python", skillProgress: 50),
                  SkillTileWidget(skillName: "Python", skillProgress: 20),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SkillTileWidget extends StatelessWidget {
  final double? skillProgress;
  final String skillName;
  const SkillTileWidget({
    Key? key,
    required this.skillProgress,
    required this.skillName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              skillName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "$skillProgress%",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          width: 500,
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: skillProgress!/100),
            duration: const Duration(milliseconds: 1000),
            builder: (context, value, _) =>
                LinearProgressIndicator(value: value),
          ),
        ),
      ],
    );
  }
}
