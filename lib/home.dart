import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/code/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.height * 0.80,
                // full border
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  border: Border.all(
                    color: Styles.defaultGrey,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text("Yarno Van de Weyer",
                          style: Styles.defaultTitleTextStyle),

                      SizedBox(
                        width: 220,
                        height: 60,
                        child: Center(
                          child: Card(
                            shadowColor:
                                Theme.of(context).colorScheme.secondaryContainer,
                            color: Theme.of(context).colorScheme.secondary,
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Full Stack Developer",
                                  style: Styles.defaultSubtitleWhite),
                            ),
                          ),
                        ),
                      ),

                      // thin line as divider
                      Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: 0.5,
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.email,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer),
                              const Text("yarnovandeweyer2@hotmail.com")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.phone,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer),
                              const Text("+32 484 52 40 24")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.cast_for_education,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer),
                              const Text("Karel de Grote - Antwerpen")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.github,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer),
                              FaIcon(FontAwesomeIcons.linkedin,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer),
                              FaIcon(FontAwesomeIcons.instagram,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.height * 0.80,
                // full border
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Styles.defaultGrey,
                    width: 1,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
