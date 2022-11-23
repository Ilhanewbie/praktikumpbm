import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 300,
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
                child: Text("HOME PAGE",style: GoogleFonts.poppins(fontSize: 32),)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber),
                height: 80,
                width: 300,
                child: Center(child: Text("Menu 1",style: GoogleFonts.poppins(fontSize: 24))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber),
                height: 80,
                width: 300,
                child: Center(child: Text("Menu 2",style: GoogleFonts.poppins(fontSize: 24))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber),
                height: 80,
                width: 300,
                child: Center(child: Text("Menu 3",style: GoogleFonts.poppins(fontSize: 24))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber),
                height: 80,
                width: 300,
                child: Center(child: Text("Menu 4",style: GoogleFonts.poppins(fontSize: 24))),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Created by Ilhan Firaldi",style: GoogleFonts.poppins(fontSize: 12,color: Color.fromARGB(125, 0, 0, 0)))
            ],
          ),
        ) ),
    );
  }
}