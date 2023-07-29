import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            // full border
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
            ),
            child: Column(
              children: [
                Text("Yarno Van de Weyer"),
                Text("Full Stack Developer"),
              ],
            )
        ),
      ),
    );
  }
}
