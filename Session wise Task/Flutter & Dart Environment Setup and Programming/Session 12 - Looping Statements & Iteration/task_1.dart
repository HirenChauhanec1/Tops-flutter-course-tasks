void main(){

  // 1.
  // Create a Dart list named foodItems with 5 of your favorite Zomato dishes (as strings),
  // then use a for loop to print each dish with its index (e.g., '1. Biryani').

   List<String> foodList = ["Pizza", "Burger", "Dosa", "Biryani","Sandwich"];

   for(int i = 0; i< foodList.length; i++){
     print("${i+1}. ${foodList[i]}");
   }

   // for (var element in foodList.indexed) {
   //   print("${element.$1+1}. ${element.$2}");
   // }

}