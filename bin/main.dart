import 'package:mongo_dart/mongo_dart.dart';

main(List<String> arguments) async {
  var users = <String, Map>{};
  // Connect to the database
  var db = Db('mongodb://localhost:27017/test');
  await db.open();
  print('Connected to Database');
  // Get the collection
  var collection = db.collection('people');
  var people = await collection.find().toList();
  print(users);
}
