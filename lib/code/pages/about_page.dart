import 'package:flutter/material.dart';
import 'package:portfolio/code/styles.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  static const String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget>[
          SizedBox(height: 32),
          Text(
            'About Me',
            style: Styles.defaultTitleTextStyle,
          ),
          // small vertical line
          VerticalDevider(),
          SizedBox(height:  10),
          SizedBox(
            width: 400,
            child: Text(
              'I am a software engineer with 10 years of experience in the industry. I have worked on a variety of projects, including mobile apps, web apps, and desktop apps. I am currently working as a freelancer, but I am looking for a full-time position.',
              style: Styles.defaultTextStyle,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Skills',
            style: Styles.defaultTitleTextStyle,
          ),
          VerticalDevider(),
          SizedBox(height: 10),
          SizedBox(
            width: 400,
            child: Column(
              children: [
                Row(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Flutter'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Dart'),
                      ),
                    ),
                  ],
                ),
                Row(),
              ],
            )
          ),
        ],
      ),
    );
  }
}

class VerticalDevider extends StatelessWidget {
  const VerticalDevider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 50,
      decoration:  BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
