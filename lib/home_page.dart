import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int imgL = 1;
  int imgR = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DiceApp"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        //elevation: 10.0,
      ),
      body: Container(
        color: Colors.deepPurple,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Flexible(
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color?>(Colors.transparent),
                  shadowColor:
                      MaterialStatePropertyAll<Color?>(Colors.transparent),
                ),
                onPressed: () => setState(() => imgL = Random().nextInt(6) + 1),
                child: Image.asset('assets/img/dice$imgL.png'),
              ),
            ),
            const SizedBox(width: 20),
            Flexible(
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color?>(Colors.transparent),
                  shadowColor:
                      MaterialStatePropertyAll<Color?>(Colors.transparent),
                ),
                onPressed: () => setState(() => imgR = Random().nextInt(6) + 1),
                child: Image.asset('assets/img/dice$imgR.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
