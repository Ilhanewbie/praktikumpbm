import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,),
        body: SafeArea(
          child:Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background.jpg"),fit: BoxFit.cover)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Registration Form', style: TextStyle(color: Colors.white, fontFamily: "Schyler", fontSize: 18))]),
                  const Positioned(
                    top: 70,
                    right: 30,
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Email',
                          filled: true,
                          fillColor: Colors.white),),
                    )),
                     Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Registration Form', style: TextStyle(color: Colors.white, fontFamily: "Schyler", fontSize: 18))]),
                  const Positioned(
                    top: 170,
                    right: 30,
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.white),),
                    )),
                   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Registration Form', style: TextStyle(color: Colors.white, fontFamily: "Schyler", fontSize: 18))]),
                  const Positioned(
                    top: 280,
                    right: 30,
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Confirm Password',
                          filled: true,
                          fillColor: Colors.white),),
                    )),
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
                              
                            },
                            color: const Color.fromARGB(255, 253, 227, 29),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: const Text("Submit",style: TextStyle(
                              fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black
                    
                            ),), 
                            ),
                          ),
                        ],
                      ),
                    )],
          )),
    );
  }
}