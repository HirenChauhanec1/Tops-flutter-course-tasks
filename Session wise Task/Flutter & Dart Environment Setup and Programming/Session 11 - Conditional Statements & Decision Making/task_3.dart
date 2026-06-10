void main() {
  // 3.
  // Create a Dart function loginStatus that takes two strings: username and password.
  // If both match 'user123' and 'pass123', print 'Login Successful';
  // if the username matches but password doesn't, print 'Incorrect password';
  // otherwise, print 'User not found'.<br><br><em><strong>Hint:</strong>
  // Use nested if-else statements to check each condition.</em>

  loginStatus(email: "user12", password: "pass123");
}

void loginStatus({required String email, required String password}) {

  if (email == "user123" || password == "pass123") {
    if (email == "user123" && password == "pass123") {
      print("Login Successful");
    } else if (email == "user123") {
      print("Incorrect password");
    } else {
      print("User not found");
    }
  } else {
    print("Incorrect Email and password");
  }
}
