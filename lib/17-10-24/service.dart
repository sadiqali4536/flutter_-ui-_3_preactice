import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final List<User> _users = [];

  List<User> get users => _users;

  void addUser(User user) {
    _users.add(user);
    notifyListeners();
  }

  void updateUser(String id, String newName, date) {
    for (var user in _users) {
      if (user.id == id) {
        user.name = newName;
        notifyListeners();
        
      }
    }
  }

  
  void deleteUser(String id) {
    _users.removeWhere((user) => user.id == id);
    notifyListeners();
  }
}

class User {
  final String id;
  String name;

  var date;

  User({required this.id, required this.name, required DateTime date});
}