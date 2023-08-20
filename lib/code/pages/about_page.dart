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
              'I\'m currently studying applied information technologies at KdG university in Antwerp. My skills include Java, ASP .NET Core, EF, React Native and much more! Whenever I am not studying for school you will probably find me in the woods on my mountainbike or behind my laptop learning new computer languages.',
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
            width: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SkillBox(skillName: 'Flutter',),
                    SkillBox(skillName: 'React')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SkillBox(skillName: '.NET CORE',),
                    SkillBox(skillName: 'JAVA')
                  ],
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}

class SkillBox extends StatelessWidget {
  final String skillName;
  const SkillBox({
    super.key, required this.skillName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 150,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(skillName, style: Styles.defaultSubtitleTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalDevider extends StatelessWidget {
  final double? height;
  final double? width;
  const VerticalDevider({
    super.key, this.height, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 5,
      width: width ?? 50,
      decoration:  BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
