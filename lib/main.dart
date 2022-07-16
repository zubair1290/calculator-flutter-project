import 'package:flutter/material.dart';
import 'package:calculator/widgets/buttons_in_row.dart';
import 'dart:math';

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
  void setStateAddText(String ch) {
    setState(() {
      text += ch;
    });
  }

  void _addText(String ch) {
    // +, -, x, /, ^ 
    if (ch != '+' && ch != '-' && ch != 'x' && ch != '/' && ch != '^' && ch != '=') {
      setStateAddText(ch);
      return;
    }
    if (ch == '=') {
      int plus = text.lastIndexOf('+');
      if (plus == text.length-1) return;
      int minus = text.lastIndexOf('-');
      if (minus == text.length-1) return;
      int mult = text.lastIndexOf('x');
      if (mult == text.length-1) return;
      int div = text.lastIndexOf('/');
      if (div == text.length-1) return;
      int power = text.lastIndexOf('^');
      if (power == text.length-1) return;
      int mod = text.lastIndexOf("%");
      if (mod == text.length-1) return;

      if (plus != -1) {
        var nums = text.split('+');
        setState(() {
          text = (num.parse(nums[0]) + num.parse(nums[1])).toString();
        });
        return;
      }
      if (minus != -1) {
        var nums = text.split('-');
        setState(() {
          text = (num.parse(nums[0]) - num.parse(nums[1])).toString();
        });
        return;
      }
      if (mult != -1) {
        var nums = text.split('x');
        setState(() {
          text = (num.parse(nums[0]) * num.parse(nums[1])).toString();
        });
        return;
      }
      if (div != -1) {
        var nums = text.split('/');
        setState(() {
          text = (num.parse(nums[0]) / num.parse(nums[1])).toString();
        });
        return;
      }
      if (power != -1) {
        var nums = text.split('^');
        setState(() {
          text = pow(num.parse(nums[0]), num.parse(nums[1])).toString();
        });
        return;
      }
      if (mod != -1) {
        var nums = text.split('%');
        setState(() {
          text = (num.parse(nums[0]) % num.parse(nums[1])).toString();
        });
        return;
      }
      return;
    } 

    int plus = text.lastIndexOf('+');
    if (plus == text.length-1) return;
    if (plus != -1) {
      var nums = text.split('+');
      setState(() {
        text = (num.parse(nums[0]) + num.parse(nums[1])).toString();
      });
      setStateAddText(ch);
      return;
    }
    int minus = text.lastIndexOf('-');
    if (minus == text.length-1) return;
    if (minus != -1) {
      var nums = text.split('-');
      setState(() {
        text = (num.parse(nums[0]) - num.parse(nums[1])).toString();
      });
      setStateAddText(ch);
      return;
    }
    int mult = text.lastIndexOf('x');
    if (mult == text.length-1) return;
    if (mult != -1) {
      var nums = text.split('x');
      setState(() {
        text = (num.parse(nums[0]) * num.parse(nums[1])).toString();
      });
      setStateAddText(ch);
      return;
    }
    int div = text.lastIndexOf('/');
    if (div == text.length-1) return;
    if (div != -1) {
      var nums = text.split('/');
      setState(() {
        text = (num.parse(nums[0]) / num.parse(nums[1])).toString();
      });
      setStateAddText(ch);
      return;
    }
    int power = text.lastIndexOf('^');
    if (power == text.length-1) return;
    if (power != -1) {
      var nums = text.split('^');
      setState(() {
        text = pow(num.parse(nums[0]), num.parse(nums[1])).toString();
      });
      setStateAddText(ch);
      return;
    }
    int mod = text.lastIndexOf("%");
    if (mod == text.length-1) return;
    if (mod != -1) {
      var nums = text.split('%');
      setState(() {
        text = (num.parse(nums[0]) % num.parse(nums[1])).toString();
      });
      return;
    }
    setStateAddText(ch);
  }

  void _clearText() {
    if (text.isNotEmpty) {
      setState(() {
        text = "";
      });
    }
  }

  void _deleteText() {
    if (text.isNotEmpty) {
      setState(() {
        text = text.substring(0, text.length-1);
      });
    }
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
            btn3Func: () => { _addText(".") }, btn3Text: ".", 
            btn4Func: _deleteText, btn4Text: "Delete"),
          const SizedBox(height: 5,),
          ButtonsInRow(
            btn1Func: () => { _addText("7")}, btn1Text: "7", 
            btn2Func: () => { _addText("8") }, btn2Text: "8", 
            btn3Func: () => { _addText("9") }, btn3Text: "9", 
            btn4Func: () => { _addText("=")}, btn4Text: "="),
          const SizedBox(height: 5,),
          ButtonsInRow(
            btn1Func: () => { _addText("4")}, btn1Text: "4", 
            btn2Func: () => { _addText("5") }, btn2Text: "5", 
            btn3Func: () => { _addText("6") }, btn3Text: "6", 
            btn4Func: () => { _addText("+")}, btn4Text: "+"),
          const SizedBox(height: 5,),
          ButtonsInRow(
            btn1Func: () => { _addText("1")}, btn1Text: "1", 
            btn2Func: () => { _addText("2") }, btn2Text: "2", 
            btn3Func: () => { _addText("3") }, btn3Text: "3", 
            btn4Func: () => { _addText("-")}, btn4Text: "-"),
          const SizedBox(height: 5,),
          ButtonsInRow(
            btn1Func: () => { _addText("%")}, btn1Text: "%", 
            btn2Func: () => { _addText("0") }, btn2Text: "0", 
            btn3Func: () => { _addText("/") }, btn3Text: "/", 
            btn4Func: () => { _addText("x")}, btn4Text: "x"),
        ]
      ),
    );
  }
}
