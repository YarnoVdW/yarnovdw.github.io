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
            Card(
              elevation: 10,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 180,
                          height: 150,
                          child: Card(
                            elevation: 10,
                          ),
                        ),
                        const Text("Yarno Van de Weyer",
                            style: Styles.defaultTitleTextStyle),

                        SizedBox(
                          width: 220,
                          height: 60,
                          child: Center(
                            child: Card(
                              shadowColor: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
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
                          width: MediaQuery.of(context).size.width * 0.20,
                          height: 0.5,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Email",
                                      style: Styles.defaultTextStyle,
                                    ),
                                    Text(
                                      "yarnovandeweyer2@hotmail.com",
                                      style: Styles.smallText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.phone,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Phone",
                                      style: Styles.defaultTextStyle,
                                    ),
                                    Text(
                                      "+32 484 52 40 24",
                                      style: Styles.smallText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.cast_for_education,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Education",
                                      style: Styles.defaultTextStyle,
                                    ),
                                    Text(
                                      "Karel de Grote - Antwerpen",
                                      style: Styles.smallText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            if (MediaQuery.of(context).size.width > 600) ...{
              const MainInfoWidget()
            }
          ],
        ),
      ),
    );
  }
}

class MainInfoWidget extends StatefulWidget {
  const MainInfoWidget({
    super.key,
  });

  @override
  State<MainInfoWidget> createState() => _MainInfoWidgetState();
}

class _MainInfoWidgetState extends State<MainInfoWidget> {

  late int selectedIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    Widget? page;
    switch (selectedIndex) {
      case 0:
        page = const Text("Page 1");
        break;
      case 1:
        page = const Text("Page 2");
        break;
      case 2:
        page = const Text("Page 3");
        break;
      default:
        page = const Text("Page 1");
    }
    return Card(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.60,
            height: MediaQuery.of(context).size.height * 0.80,
            // full border
            child:  Stack(
              children: [
                // navbar on top right
                Positioned(
                  top: 0,
                  right: 0 ,
                  child: NavBar(
                    onTabChanged: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                ),
                 Container(
                  child:
                    page

                ),
              ],
            )));
  }
}

// class for navbar
class NavBar extends StatefulWidget {
  final Function(int) onTabChanged;
  const NavBar({
    super.key, required this.onTabChanged,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 450,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
        ),
      ),
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  widget.onTabChanged(0);
                });
              },
              child: const Text(
                "About me",
                style: Styles.defaultTextStyle,

              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.onTabChanged(1);

                });
              },
              child: const Text(
                "Portfolio",
                style: Styles.defaultTextStyle,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.onTabChanged(2);
                });
              },
              child: const Text(
                "Experience",
                style: Styles.defaultTextStyle,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.onTabChanged(3);
                });
              },
              child: const Text(
                "Contact",
                style: Styles.defaultTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
