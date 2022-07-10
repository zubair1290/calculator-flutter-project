import 'package:flutter/material.dart';
import 'package:calculator/widgets/buttons_in_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Simple Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";

  void _addText(String ch) {
    setState(() {
      text += ch;
    });
  }

  void _clearText() {
    setState(() {
      text = "";
    });
  }

  void _deleteText() {
    setState(() {
      text = text.substring(0, text.length-1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  text, 
                  style: const TextStyle(fontSize: 58),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8,),
          ButtonsInRow(
            btn1Func: _clearText, btn1Text: "Clear All", 
            btn2Func: () => { _addText("^") }, btn2Text: "^", 
            btn3Func: () => { _addText(",") }, btn3Text: ",", 
            btn4Func: () => { _deleteText() }, btn4Text: "Delete"),
          const SizedBox(height: 5,),
          ButtonsInRow(
            btn1Func: () => { _addText("7")}, btn1Text: "7", 
            btn2Func: () => { _addText("8") }, btn2Text: "8", 
            btn3Func: () => { _addText("9") }, btn3Text: "9", 
            btn4Func: () => { _addText("+")}, btn4Text: "+"),
          const SizedBox(height: 5,),
          ButtonsInRow(
            btn1Func: () => { _addText("4")}, btn1Text: "4", 
            btn2Func: () => { _addText("5") }, btn2Text: "5", 
            btn3Func: () => { _addText("6") }, btn3Text: "6", 
            btn4Func: () => { _addText("-")}, btn4Text: "-"),
          const SizedBox(height: 5,),
          ButtonsInRow(
            btn1Func: () => { _addText("1")}, btn1Text: "1", 
            btn2Func: () => { _addText("2") }, btn2Text: "2", 
            btn3Func: () => { _addText("3") }, btn3Text: "3", 
            btn4Func: () => { _addText("x")}, btn4Text: "x"),
          const SizedBox(height: 5,),
          ButtonsInRow(
            btn1Func: () => { _addText("00")}, btn1Text: "00", 
            btn2Func: () => { _addText("0") }, btn2Text: "0", 
            btn3Func: () => { _addText("000") }, btn3Text: "000", 
            btn4Func: () => { _addText("/")}, btn4Text: "/"),
        ]
      ),
    );
  }
}
