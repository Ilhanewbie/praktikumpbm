

class Movie {
  String title;
  String description;
  String image;
  int year;

  Movie(
    {required this.title,
    required this.description,
    required this.image,
    required this.year});
}

List<Movie> movieList = [
  Movie(
  title: 'The Shawsank Redemption', 
  description: "Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man's unique way of dealing with his new, torturous life along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Re.",
  year: 1994, 
  image: "assets/Film1.jpg", 
  ),
    Movie(
  title: 'Jumanji', 
  description: 'The gang is back but the game has changed. As they return to Jumanji to rescue one of their own, they discover that nothing is as they expect. The players will have to brave parts unknown and unexplored, from the arid deserts to the snowy mountains, in order to escape the worlds most dangerous game.',
  year: 2019, 
  image: "assets/Film2.jpg",
    ),
      Movie(
  title: 'The Godfather', 
  description: 'The Godfather "Don" Vito Corleone is the head of the Corleone mafia family in New York. He is at the event of his daughters wedding. Michael, Vito youngest son and a decorated WW II Marine is also present at the wedding. Michael seems to be uninterested in being a part of the family business. Vito is a powerful man, and is kind to all those who give him respect but is ruthless against those who do not.',
  year: 1972, 
  image: "assets/Film3.jpg",
    ),
    Movie(
  title: 'The Godfather: Part II', 
  description: 'The continuing saga of the Corleone crime family tells the story of a young Vito Corleone growing up in Sicily and in 1910s New York; and follows Michael Corleone in the 1950s as he attempts to expand the family business into Las Vegas, Hollywood and Cuba.',
  year: 1974, 
  image: "assets/Film4.jpg",
    ),
    Movie(
  title: 'The Dark Knight', 
  description: 'Set within a year after the events of Batman Begins (2005), Batman, Lieutenant James Gordon, and new District Attorney Harvey Dent successfully begin to round up the criminals that plague Gotham City, until a mysterious and sadistic criminal mastermind known only as "The Joker" appears in Gotham, creating a new wave of chaos',
  year: 2008, 
  image: "assets/Film5.jpg",
    ),
    Movie(
  title: '12 Angry Men', 
  description: 'The defense and the prosecution have rested, and the jury is filing into the jury room to decide if a young man is guilty or innocent of murdering his father. What begins as an open-and-shut case of murder soon becomes a detective story that presents a succession of clues creating doubt, and a mini-drama of each of the jurors prejudices and preconceptions about the trial, the accused, AND each other.',
  year: 1957, 
  image: "assets/Film6.jpg",
    )
];