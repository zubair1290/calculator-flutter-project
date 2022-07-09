import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Text("1+1", textAlign: TextAlign.right,),
              ),
            ],
          ),
          Row(children: [
            const SizedBox(width: 10,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("Clear All")),
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("^")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text(",")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("Delete")),
            ),
            const SizedBox(width: 5,),
          ],),
          const SizedBox(height: 5,),
          Row(children: [
            const SizedBox(width: 10,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("7")),
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("8")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("9")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("+")),
            ),
            const SizedBox(width: 5,),
          ],),
          const SizedBox(height: 5,),
          Row(children: [
            const SizedBox(width: 10,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("4")),
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("5")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("6")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("-")),
            ),
            const SizedBox(width: 5,),
          ],),
          const SizedBox(height: 5,),
          Row(children: [
            const SizedBox(width: 10,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("1")),
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("2")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("3")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("x")),
            ),
            const SizedBox(width: 5,),
          ],),
          const SizedBox(height: 5,),
          Row(children: [
            const SizedBox(width: 10,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("00")),
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("0")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("000")),
            ),
            const SizedBox(width: 5,),
            Expanded( 
              child: ElevatedButton(onPressed: ()=> {}, child: const Text("/")),
            ),
            const SizedBox(width: 5,),
          ],),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
