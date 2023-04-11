import 'package:sqflite/sqflite.dart';


Future saveToken(String token) async {
  final database = await openDatabase('my_database.db', version: 1);
  await database.execute('CREATE TABLE IF NOT EXISTS tokens (id INTEGER PRIMARY KEY, token TEXT)');
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

