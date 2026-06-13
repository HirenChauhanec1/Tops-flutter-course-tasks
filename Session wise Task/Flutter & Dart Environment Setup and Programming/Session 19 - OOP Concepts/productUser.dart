class ProductUser{

  static int totalUsers = 0;

  String name,email;

  ProductUser({required this.name,required this.email}){
    totalUsers++;
  }

  void displayInfo(){
    print("Name : $name \nEmail : $email");
  }

}