import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoubleScroll extends StatefulWidget {
  const DoubleScroll({super.key});

  @override
  State<DoubleScroll> createState() => _DoubleScrollState();
}

class _DoubleScrollState extends State<DoubleScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
        'SPLITTER',
        style: TextStyle(
        letterSpacing: 1.5,
        color: Colors.white,
        fontSize: 20,
    ),
    ),
    ),
      body:Column(
        children: [
          Container(
            height: 351.5,
            width: 400,
            color: Colors.blue,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(10, (index) =>buildColumn1(index: index) )
              ),
            ),
          ),
          Container(
              height: 351.5,
              width: 400,
              color: Colors.blue,
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) => buildRow(index: index)),
                ),
              )
          )
        ],
      ),
    );
  }

  Row buildRow({required index}) {
    return Row(
              children: [
                SizedBox(width: 8,),
                Align(
                  child: Container(
                    height: 330,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        color: Color(0xff94C3E8FF),
                    ),
                    alignment: Alignment.center,
                    child: Text('${index+1}',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                     ),),
                  ),
                ),
              ],
            );
  }

  Column buildColumn1({required index}) {
    return Column(
                children: [
                  SizedBox(height: 8,),
                  Align(
                    child: Container(
                      height: 80,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff94C3E8FF),
                      ),
                      alignment: Alignment.center,
                      child: Text('${index+1}',style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ),
                  ),
                ],
              );
  }
}