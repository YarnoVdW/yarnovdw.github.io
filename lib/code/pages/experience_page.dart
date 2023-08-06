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
        children:  <Widget>[
          SizedBox(height: 32),
          Text(
            'Exeperiences',
            style: Styles.defaultTitleTextStyle,
          ),
          // small vertical line
          VerticalDevider(),
          SizedBox(height: 10),
          Text('TRICKLE',
            style: Styles.defaultSubtitleTextStyle,
          ),
          // experience at trickle
          Text('Flutter Developer',
            style: Styles.defaultBodyTextStyle,
          ),

        ]
      ),
    );
  }
}