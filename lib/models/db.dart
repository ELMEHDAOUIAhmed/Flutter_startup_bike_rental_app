import 'package:sqflite/sqflite.dart';

Future saveToken(String token) async {
  final database = await openDatabase('my_database.db', version: 1);
  await database.execute(
      'CREATE TABLE IF NOT EXISTS tokens (id INTEGER PRIMARY KEY, token TEXT)');
  await database.delete('tokens');
  await database.insert('tokens', {'token': token});
}

Future<String> getToken() async {
  final database = await openDatabase('my_database.db', version: 1);
  final tokens = await database.query('tokens', limit: 1);
  if (tokens.isNotEmpty) {
    return tokens.first['token'] as String;
  } else {
    return '';
  }
}

Future<void> deleteToken() async {
  final database = await openDatabase('my_database.db', version: 1);
  await database.delete('tokens');
}

Future<void> saveUser(Map<String, dynamic> user) async {
  final database = await openDatabase('my_database.db', version: 1);
  await database.execute(
    'CREATE TABLE IF NOT EXISTS user (id INTEGER PRIMARY KEY, matricule TEXT, first_name TEXT, last_name TEXT, username TEXT, email TEXT, sold REAL)',
  );
  await database.delete('user');
  final userData = <String, dynamic>{
    'matricule': user['matricule'],
    'first_name': user['first_name'],
    'last_name': user['last_name'],
    'username': user['username'],
    'email': user['email'],
    'sold': user['sold'].toDouble(),
  };
  await database.insert('user', userData);
  print("USER SAVE!");
}

Future<void> deleteUser() async{
  final database = await openDatabase('my_database.db', version: 1);
  await database.delete('user');
  print("USER DELETED!");
}

Future<Map<String, dynamic>> getUser() async {
  final database = await openDatabase('my_database.db', version: 1);
  final results = await database.query('user');
  if (results.isEmpty) {
    return null;
  }
  print(results.first);
  return results.first;
}

Future<void> updateUserSold(double newSold) async {
  final database = await openDatabase('my_database.db', version: 1);
  final userData = <String, dynamic>{
    'sold': newSold,
  };
  await database.update('user', userData);
  print('SOLD UPDATED!');
}


Future<String> getMatricule() async {
  final database = await openDatabase('my_database.db', version: 1);
  final results = await database.query('user');
  if (results.isEmpty) {
    return null;
  }
  return results.first['matricule'] as String;
}



