void main(){

  // 2.
  // Add a new restaurant to favRestaurants using the add() method,
  // then update the second restaurant's name to something else using its index. '
  // 'Print the updated list after each change.


  List<String>  favRestaurants = ['Barbeque Nation', 'Domino\'s', 'Hocco'];

  favRestaurants.add("McDonald's");
  print(favRestaurants);

  favRestaurants[1] = "Burger King";
  print(favRestaurants);


}

