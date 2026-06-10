void main(){

  // 4.
  // Refactor your main.dart code to group all user details (name, age, email)
  // into a single UserProfile class with appropriate data types.
  // Create an object of UserProfile, assign values, and print each property.

  UserProfile hirenProfile = UserProfile(name: "Hiren", age: 31, email: "chauhanhirenec1@gmail.com");

  print("Name : ${hirenProfile.name} \nAge : ${hirenProfile.age} \nEmail : ${hirenProfile.email}");

}

class UserProfile{

  String name;
  int age;
  String email;

  UserProfile({required this.name,required this.age,required this.email});
}