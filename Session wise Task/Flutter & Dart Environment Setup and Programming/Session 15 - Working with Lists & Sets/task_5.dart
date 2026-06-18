
void main() {
  // 5.
  // Build a function filterUniqueCuisines that takes a list of cuisine names
  // (some duplicates, e.g., ['Italian', 'Chinese', 'Italian', 'Mexican', 'Chinese']) and
  // returns a set of unique cuisines. Test it with sample data and print the result.

  List<String> cuisineList = ['Italian', 'Chinese', 'Italian', 'Mexican', 'Chinese',];
  print(cuisineList);

  Set<String> cuisineSet = filterUniqueCuisines(cuisineList);
  print(cuisineSet);

}

Set<String> filterUniqueCuisines(List<String> cuisineList) => cuisineList.toSet();
