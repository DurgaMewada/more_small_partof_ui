import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bolt extends StatelessWidget {
  const Bolt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'BOLT',
          style: TextStyle(
            letterSpacing: 15,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: Container(
                height: double.infinity,
                width: 80,
                color: Colors.black,
                alignment: Alignment.center,
                child: Text('⚡',style: TextStyle(
                  fontSize: 60,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
