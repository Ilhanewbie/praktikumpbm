import 'package:flutter/material.dart';
import 'page_dua.dart';
import 'page_tiga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     home: const RentApp(),
    );
  }
}

class RentApp extends StatelessWidget{
  const RentApp({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:[
            Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/background.jpg"),fit: BoxFit.cover,),
            ),
            child: null,
          ),
            Positioned(
              top: 20,
              right: 100,
              child: Container(
                width: 150,
                height: 80,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/logo.png"),fit: BoxFit.contain),),
                
              ),
            ),
            Positioned(
                      top: 400,
                      right: 10,
                      left: 10,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 300,
                            child: MaterialButton(
                            minWidth: double.infinity,
                            height:35,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const PageDua()), );
                            },
                            color: const Color.fromARGB(255, 253, 227, 29),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: const Text("Login By Number",style: TextStyle(
                              fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),), 
                            ),
                          ),
                          const SizedBox(height: 1),
                          SizedBox(
                            width: 300,
                            child: MaterialButton(
                            minWidth: double.infinity,
                            height:35,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const PageTiga()), );
                            },
                            color: const Color.fromARGB(255, 204, 204, 204),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: const Text("Registration",style: TextStyle(
                              fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black
                    
                            ),), 
                            ),
                          ),
                        ],
                      ),
                    ),
            
          ] 
        ),
      ),
    );
  }
}
