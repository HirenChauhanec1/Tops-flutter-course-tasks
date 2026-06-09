void main(){

  // 1.
  // Create a Dart class called Restaurant with fields name, cuisine, and rating.
  // Add a constructor to initialize all fields, then create an object for a restaurant you like and print all its details.

  Restaurant r1 = Restaurant(name: "Saraza", cuisine: "Italian", rating: 4.6);
  r1.printAllDetails();

}

class Restaurant {

  String name;
  String cuisine;
  double rating;

  Restaurant({required this.name,required this.cuisine,required this.rating});

  void printAllDetails(){
    print("Restaurant's name : $name \n$name's cuisine type : $cuisine \n$name's rating : $rating");
  }

}