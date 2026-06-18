void main() {
  // 1.
  // Create a Dart Map called foodItem with keys 'name', 'price',
  // and 'category' to represent a Zomato menu item, and print each value using its key.

  Map<String, dynamic> foodItem = {
    'name': "Burger",
    'price': 100,
    'category': 'fast-food',
  };

  print("Name: ${foodItem['name']}");
  print("Price: ₹${foodItem['price']}");
  print("Category: ${foodItem['category']}");
}
