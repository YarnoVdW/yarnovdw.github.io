import 'package:flutter/material.dart';
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.tertiaryContainer,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.onSecondaryContainer,
                              width: 1,
                            ),
                          ),
                          child: Text("Full Stack Developer",
                              style: Styles.defaultTextStyle.copyWith(color: Theme.of(context).colorScheme.onSecondaryContainer)),
                        ),
                      ),
                      // thin line as divider
                      Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: 0.5,
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                       Row(
                        children: <Widget>[
                          Icon(Icons.email, color: Theme.of(context).colorScheme.onSecondaryContainer),
                          const Text("yarnovandeweyer2@hotmail.com")
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
