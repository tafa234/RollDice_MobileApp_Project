// ignore: file_names
import 'package:flutter/material.dart';
import 'package:firstproject/role_dice.dart';

var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  const GradientContainer.purple({super.key})
      : colors = const [Colors.purple, Color.fromARGB(255, 5, 0, 4)];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAlignment, end: endAlignment)),
      child: Center(child: RoleDice()),
    );
  }
}

// ignore: camel_case_types
class styledText extends StatelessWidget {
  const styledText(String text, {super.key}) : styledtext = text;
  final String styledtext;
  @override
  Widget build(context) {
    return Text(
      styledtext,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
