import 'package:flutter/material.dart';
import 'package:portfolio/code/pages/about_page.dart';
import 'package:portfolio/code/styles.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 32),
            Text(
              'Experiences',
              style: Styles.defaultTitleTextStyle,
            ),
            // small vertical line
            VerticalDevider(),
            SizedBox(height: 15),
            ExperienceTextWidget(
              title: "Studant VZW",
              subTitle:
                  "At Studant VZW I primarily work as a programming tutor, mostly teaching C#.",
              description: "December 2022 - present",
            ),
            SizedBox(height: 5),
            VerticalDevider(height: 1, width: 500),
            SizedBox(height: 10),
            ExperienceTextWidget(
              title: "TRICKLE",
              subTitle:
                  "I honed my skills as a Flutter developer at Trickle, contributing to the creation of a dynamic scheduling app. Collaborating within a dedicated team, I learned to meld creativity with precision to deliver an application that streamlined user experiences and optimized time management.",
              description: "Juli 2023",
            ),
            SizedBox(height: 5),

            VerticalDevider(height: 1, width: 500),
            SizedBox(height: 10),
            ExperienceTextWidget(
                title: "Info Support",
                description: "Augustus 2023",
                subTitle: "At Info Support, I embraced a dual role as a full-stack developer, seamlessly navigating React and .NET frameworks. I played an integral part in crafting an innovative application for Punt vzw, establishing a vital link between psychologists and clients, and enhancing accessibility to mental health services."),
            SizedBox(height: 5),

            VerticalDevider(height: 1, width: 500),
          ]),
    );
  }
}

class ExperienceTextWidget extends StatelessWidget {
  final String title;
  final String description;
  final String subTitle;

  const ExperienceTextWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Styles.defaultSubtitleTextStyle.copyWith(fontSize: 28),
          ),
          // experience at trickle
          Text(
            subTitle,
            style: Styles.defaultBodyTextStyle,
          ),
          Text(
            description,
            style: Styles.smallText,
          )
        ],
      ),
    );
  }
}
