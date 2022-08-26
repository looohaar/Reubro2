import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen2Card extends StatefulWidget {
  Screen2Card({
    Key? key,
  }) : super(key: key);
  @override
  State<Screen2Card> createState() => _Screen2CardState();
}
 
class _Screen2CardState extends State<Screen2Card> {
  Widget build(BuildContext context) {
    Color cardColor = Colors.grey;
    return Ink(
      child: InkWell(
        child: Container(
          color: cardColor,
          height: 100,
          width: 100,
        ),
        onTap: () {
          setState(
            () {
           cardColor==Colors.grey
           ?cardColor= Colors.green
           : cardColor=Colors.blue;
           
              color: 
              print('Color Changed');
            },
          );
        },
      ),
    );
  }

  Color changeColor(Color color) {
    Color newColor = color;
    newColor = Colors.green;
    print('Color Changed');

    return newColor;
  }
}
