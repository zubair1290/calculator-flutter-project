import 'package:flutter/material.dart';

class ButtonsInRow extends StatelessWidget {
  final Function btn1Func;
  final Function btn2Func;
  final Function btn3Func;
  final Function btn4Func;

  final String btn1Text;
  final String btn2Text;
  final String btn3Text;
  final String btn4Text;

  const ButtonsInRow({
    Key? key, 
    required this.btn1Func, 
    required this.btn1Text, 
    required this.btn2Func, 
    required this.btn2Text, 
    required this.btn3Func, 
    required this.btn3Text, 
    required this.btn4Func,
    required this.btn4Text,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle styleElevatedButton = ElevatedButton.styleFrom(
      fixedSize: const Size.fromHeight(60),
    );
    const TextStyle styleTextInBtn = TextStyle(
      fontSize: 22,
    );
    return Row(
      children: [
        const SizedBox(width: 10,),
        Expanded(
          child: ElevatedButton(
            style: styleElevatedButton,
            onPressed: () => btn1Func(), 
            child: Text(
              btn1Text,
              textAlign: TextAlign.center,
              style: styleTextInBtn,
            )
          ),
        ),
        const SizedBox(width: 5,),
        Expanded(
          child: ElevatedButton(
            style: styleElevatedButton,
            onPressed: () => btn2Func(), 
            child: Text(
              btn2Text,
              textAlign: TextAlign.center,
              style: styleTextInBtn,
            )
          ),
        ),
        const SizedBox(width: 5,),
        Expanded( 
          child: ElevatedButton(
            style: styleElevatedButton,
            onPressed: ()=> btn3Func(), 
            child: Text(
              btn3Text,
              textAlign: TextAlign.center,
              style: styleTextInBtn,
            )
          ),
        ),
        const SizedBox(width: 5,),
        Expanded( 
          child: ElevatedButton(
            style: styleElevatedButton,
            onPressed: () => btn4Func(), 
            child: Text(
              btn4Text,
              textAlign: TextAlign.center,
              style: styleTextInBtn,
            )
          ),
        ),
        const SizedBox(width: 5,),
      ]
    );
  }
}