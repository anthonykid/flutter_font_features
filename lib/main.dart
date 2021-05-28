import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[200],
        appBar: AppBar(
          title: Text("Flutter Typography"),
          backgroundColor: Colors.indigo[800],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Testing 01 - Default",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Testing 02 - Small Caps",
              style: TextStyle(fontSize: 20, fontFeatures: [
                FontFeature.enable('smcp')
              ]), //smcp making the text all caps but small for not capital in our text
            ),
            Text(
              "Testing 3 1/2 - Small Caps & Frac",
              style: TextStyle(fontSize: 20, fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable(
                    'frac') //frac making the 1/2 looking more like mathematics
              ]), //making the 1/2 looking more like mathematics
            ),
            Text(
              "Milonga 3 1/2 - Small Caps & Frac",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Milonga',
                  fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac')
                  ]),
            ),
            Text(
              "Cardo Font 19 (default)",
              style: TextStyle(fontSize: 20, fontFamily: 'Cardo'),
            ),
            Text(
              "Cardo Font 19 (Old Style)",
              style:
                  TextStyle(fontSize: 20, fontFamily: 'Cardo', fontFeatures: [
                FontFeature.oldstyleFigures()
              ]), //Use oldstyle figures. Some fonts have variants of the figures (e.g. the digit 9) that, when this feature is enabled, render with descenders under the baseline instead of being entirely above the baseline.
            ),
            Text(
              "Font Gabriola (Default)",
              style: TextStyle(fontSize: 20, fontFamily: 'Gabriola'),
            ),
            Text(
              "Font Gabriola (Style Set 5)",
              style:
                  TextStyle(fontSize: 20, fontFamily: 'Gabriola', fontFeatures: [
                FontFeature.stylisticSet(5)
              ]), // Select a stylistic set. Fonts may have up to 20 stylistic sets, numbered 1 through 20.
            ),
          ],
        )),
      ),
    );
  }
}
