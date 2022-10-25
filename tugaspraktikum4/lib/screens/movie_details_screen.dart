import 'package:flutter/material.dart';
import 'package:tugaspraktikum4/model/movie.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen(this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 17, 0),
      appBar: AppBar(
        title: Text(movie.title, style: GoogleFonts.poppins(),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(movie.image),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movie.year.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 17.0,fontStyle: FontStyle.italic, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.description,
                style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              )
            ],
          ),
          ),
      ),
    );
  }
}