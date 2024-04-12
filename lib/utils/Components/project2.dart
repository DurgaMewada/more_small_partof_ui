import 'package:flutter/material.dart';

class Blocks extends StatelessWidget {
  const Blocks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'THE WALL',
          style: TextStyle(
            letterSpacing: 1.5,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          buildColumn(),
          buildColumn(),
          buildColumn(),
          buildColumn(),
        ],
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(height: 7,),
        Row(
          children: [
            Container(
              height: 80,
              width: 100,
              color: Colors.brown.shade900,
            ),
            SizedBox(width: 7,),
            Container(
              height: 80,
              width: 180,
              color: Colors.brown.shade900,
            ),
            SizedBox(width: 7,),
            Container(
              height: 80,
              width: 98.5,
              color: Colors.brown.shade900,
            )
          ],
        ),
        SizedBox(height: 7,),
        Row(
          children: [
            Container(
              height: 80,
              width: 135,
              color: Colors.brown.shade900,
            ),
            SizedBox(width: 7,),
            Container(
              height: 80,
              width: 100,
              color: Colors.brown.shade900,
            ),
            SizedBox(width: 7,),
            Container(
              height: 80,
              width: 143.5,
              color: Colors.brown.shade900,
            )
          ],
        ),
      ],
    );
  }
}
