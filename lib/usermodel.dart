
class User {
  final int? id;
  final String name;
  final String email;
  final String password;
  final int age;

  User({this.id, required this.name, required this.email, required this.password, required this. age});

  // Convert a User into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'age':age,
    };
  }

  // Convert a Map into a User.
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
      age: map['age'],
    );
  }
}