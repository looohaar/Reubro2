import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reubro_test_2/view/reusable_card/scren2_card.dart';
import 'package:reubro_test_2/view/screen1.dart';

class Screen2 extends StatefulWidget {
   Screen2({Key? key,required this.indexValue}) : super(key: key);

final String indexValue;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screen 2',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                scrollDirection: Axis.vertical,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                crossAxisCount: 3,
                children: List.generate(
                 int.parse(widget.indexValue) ,
                  (index) => Screen2Card(),
                ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
