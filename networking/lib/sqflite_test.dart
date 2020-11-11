// import 'dart:async';

// import 'package:flutter/cupertino.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class Dog {
//   final int id;
//   final String name;
//   final int age;

//   Dog({this.id, this.name, this.age});
//   Map<String, dynamic> toMap(){
//     return {
//       'id': id,
//       'name': name,
//       'age': age
//     };
//   }
//   @override
//   String toString() {
//     // TODO: implement toString
//     return 'Dogs(id: $id, name: $name, age: $age)';
//   }
// }
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();

//    final Future<Database> database = openDatabase(
//     join(await getDatabasesPath(), 'doggie_database.db'),
//     onCreate: (db, version) {
//       return db.execute(
//         "CREATE TABLE dog(id INTEGER PRIMARY, name TEXT, age INTEGER)",
//       );
//     },
//     version: 1,
//   );
//   Future<void> insertDog(Dog dog) async {
//     final Database db = await database;
//     await db.insert(
//       'dogs',
//       dog.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

// //   final Future<Database> database = openDatabase(
// //     join(await getDatabasesPath(), 'doggie_database.db'),
// //     onCreate: (db, version){
// //       return db.execute(
// //         'CREATE TABLE dog(id INTEGER PRIMARY, name TEXT, age INTEGER)'
// //       );
// //     },
// //     version: 1

// //   );
// }
