void main(){

  // 4.
  // Refactor your Movie class so that genre is optional (can be null) and releaseYear has a default value of 2024 if not provided.
  // Test by creating a Movie object with only the title and print its details.

  // Hint: Use named parameters with default values and nullability in the constructor.

  Movie dhurandhar  = Movie(title: "Dhurandhar");
  dhurandhar.printMovieDetails();

}

class Movie {

  String title;
  String? genre;
  int releaseYear;

  Movie({required this.title,this.genre,this.releaseYear = 2024});

  void printMovieDetails(){
    print("Movie's title : $title ${genre != null ? "\n$title's genre : $genre" : ""} \n$title's release year : $releaseYear\n");
  }

}