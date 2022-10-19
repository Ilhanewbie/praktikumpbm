import 'package:flutter/material.dart';


class PageDua extends StatelessWidget {
  const PageDua({super.key});

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
                children:const [ 
                  Text('Enter the Number', style:TextStyle(color: Colors.white, fontFamily: "Schyler", fontSize: 18))]), 
                  const Positioned(
                    top: 70,
                    right: 30,
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '+62',
                          filled: true,
                          fillColor: Colors.white),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 130,
                    right: 80,
                    child: SizedBox(
                      width: 250,
                      child: Text("Kode akan dikirim ke nomor anda, dalam 1x24jam,Jangan berikan OTP mu pada siapapun",style: TextStyle(color: Color.fromARGB(255, 125, 124, 124)),)),
                  ),
                  Positioned(
                      top: 200,
                      right: 30,
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
                    ),
        ],) ),
    );
  }
}