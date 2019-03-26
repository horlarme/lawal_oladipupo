String getFullName(user) {
  return user['first_name'] + " " + user['last_name'];
}

/// Return languages as string
///
/// Returns String
String writeLanguages(user) {
  List<dynamic> languages = user['languages'] as List;
  String result = "";

  for (var i = 0; i <= languages.length - 1; i++) {
    if (i == 0 && languages.length > 1) {
      result = languages[i] + " & ";
      continue;
    }

    result = result + languages[i];
  }

  return result;
}

String writeDateOfBirth(user) {
  var dob = user['date_of_birth'] as Map<String, dynamic>;

  return dob['year'] + "-" + dob['month'] + "-" + dob['day'];
}
