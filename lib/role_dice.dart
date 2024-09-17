import 'dart:math';

import 'package:flutter/material.dart';

class RoleDice extends StatefulWidget {
  @override
  State<RoleDice> createState() {
    return _RoleDiceState();
  }
}

class _RoleDiceState extends State<RoleDice> {
  String activeRoleDice = "assets/images/dice-1.png";
  var activeRoleDiceNumber = 4;

  void rollDice() {
    setState(() {
      activeRoleDiceNumber = Random().nextInt(6) + 1;
      activeRoleDice = "assets/images/dice-$activeRoleDiceNumber.png";
    });
  }

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeRoleDice,
          width: 150,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            'rollDice',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        )
      ],
    );
  }
}
