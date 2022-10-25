import 'package:flutter/material.dart';
import 'package:tugaspraktikum4/model/movie.dart';
import 'package:tugaspraktikum4/screens/movie_details_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies to watch', style: GoogleFonts.poppins(),),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 17, 0),
        child: ListView.builder(itemCount: movieList.length,itemBuilder: (context, index){
          Movie movie = movieList[index];
          return Card(
            child: ListTile(
              title: Text(movie.title, style: GoogleFonts.poppins(),),
              subtitle: Text(movie.year.toString()),
              leading: Image.asset(movie.image),
              trailing: const Icon(Icons.arrow_forward_rounded),
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MovieDetailScreen(movie),));
              }),
            ),
          );
        }),
      ),
    );
  }
}