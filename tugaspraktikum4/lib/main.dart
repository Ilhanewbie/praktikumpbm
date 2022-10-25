import 'package:flutter/material.dart';
import 'screens/movie_list_screen.dart';
import 'package:google_fonts/google_fonts.dart';

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
      title: 'MMovies',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHome(),
    );
  }
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/background.jpg"),fit: BoxFit.cover)
              ),
              child: null,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*.3+10,
              right: 100,
              left: 100,
              child: Container(
                width: 180,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                  image: AssetImage("assets/logo.png"), 
                  fit: BoxFit.fitHeight)),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*.3+170,
              right: 20,
              left: 20,
              child:Column(
                children: [
                  ElevatedButton(onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => const MovieListScreen(),));
                  }), child: Text("Lets Watch!", style: GoogleFonts.poppins(),))
                ],
              ))
          ],
        )),
    );
  }
}
