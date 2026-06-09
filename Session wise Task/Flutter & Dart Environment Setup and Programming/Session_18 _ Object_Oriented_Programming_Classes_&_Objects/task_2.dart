void main(){

  // 2.
  // Write a Dart class called Movie with fields: title, genre, and releaseYear.
  // Add a constructor, then create two Movie objects for any Bollywood or
  // Hollywood films you love and display their info using print().


    Movie dhurandhar  = Movie(title: "Dhurandhar", genre: "spy action-thriller", releaseYear: 2025);
    dhurandhar.printMovieDetails();

    Movie swadesh  = Movie(title: "Swadesh", genre: "social issue drama", releaseYear: 2004);
    swadesh.printMovieDetails();

}

class Movie {

  String title;
  String genre;
  int releaseYear;

  Movie({required this.title,required this.genre,required this.releaseYear});

  void printMovieDetails(){
    print("Movie's title :  $title \n$title's genre :  $genre \n$title's release year :  $releaseYear\n");
  }

}