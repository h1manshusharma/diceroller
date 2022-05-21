import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage? diceimage;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
    });
  }

  void rollDice() {
    int rnd = 1 + (Random().nextInt(6));

    AssetImage? newimage;

    switch (rnd) {
      case 1:
        newimage = one;
        break;
      case 2:
        newimage = two;
        break;
      case 3:
        newimage = three;
        break;
      case 4:
        newimage = four;
        break;
      case 5:
        newimage = five;
        break;
      case 6:
        newimage = six;
        break;
    }
    setState(() {
      diceimage = newimage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: diceimage,
                width: 200.0,
                height: 200.0,
              ),
              Container(
                margin: const EdgeInsets.only(top: 100.0),
                child: ElevatedButton(
                  onPressed: rollDice,
                  child: const Text("Roll The Dice!!"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
