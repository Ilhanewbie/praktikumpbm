import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ilhan Firaldi',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 12;
  bool isVisible = true;
  String isNama = "Ilhan Firaldi";


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _isVisible(){
    setState(() {
      isVisible = !isVisible;
      if(isVisible){
        isNama = "Ilhan Firaldi"; 
      }else{
        isNama = "Firaldi Ilhan";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 48, 48, 48),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(),
            Text("Ilhan App"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Font Size Saat ini $_counter",
              style: TextStyle(fontSize:_counter,fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(isNama,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Times New Roman"),),
                TextButton(
              onPressed: _isVisible,
              child: const Icon(Icons.search_outlined),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black
              ),
              ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 48, 48, 48),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
