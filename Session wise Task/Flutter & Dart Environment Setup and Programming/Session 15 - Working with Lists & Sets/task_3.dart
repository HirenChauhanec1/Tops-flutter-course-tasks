void main() {
  // 3.
  // Remove the last restaurant from favRestaurants using the removeLast() method,
  // then remove a specific restaurant by name using remove().
  // Print the list after each removal.
  // <br><br><em><strong>Hint:</strong> Use remove('RestaurantName') to delete by value.</em>


  List<String>  favRestaurants = ['Barbeque Nation', 'Domino\'s', 'Hocco','McDonald\'s'];

  favRestaurants.removeLast();
  print(favRestaurants);

  favRestaurants.remove('Domino\'s');
  print(favRestaurants);

}


