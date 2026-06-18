void main() {
  // 3.
  // Build a Dart function getUserDisplayName(Map user) that
  // returns the user's display name from a Map with keys 'firstName' and 'lastName', '
  // 'formatted as 'lastName, firstName' like Instagram's profile header.

  Map<String, String> user = {'firstName': 'Hiren', 'lastName': 'Chauhan'};

  String displayName = getUserDisplayName(user);
  print(displayName);
}

String getUserDisplayName(Map<String, String> user) => "${user['lastName']}, ${user['firstName']}";
