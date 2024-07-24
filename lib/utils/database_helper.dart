import 'package:hatssue/features/challenge/models/challenge.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

const String challengeTable = 'challenge';

class DatabaseHelper {
  static Database? _db;

  Future<Database> get database async => _db ??= await initDatabase();

  Future<Database> initDatabase() async {
    print('initDatabase ===== ');
    String databasePath = await getDatabasesPath();
    print('databasePath : $databasePath');

    String path = join(databasePath, 'hatssue.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
      '''CREATE TABLE Challenge(
      index INTEGER PRIMARY KEY AUTOINCREMENT,
      id TEXT PRIMARY KEY, 
      name TEXT NOT NULL,
      startDt INTEGER,
      endDt INTEGER,
      )''',
    );
  }

  Future close() async {
    Database db = await database;
    await db.close();
  }

  Future<int> insertChallenge(Challenge challenge) async {
    print('insert ===== ');
    Database db = await database;
    print('db : $db');
    return await db.insert(challengeTable, challenge.toJson());
  }

  Future<List<Map<String, Object?>>> getChallengeById({
    required String id,
  }) async {
    Database db = await database;
    return await db.query(
      challengeTable,
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> deleteChallenge({
    required String id,
  }) async {
    Database db = await database;
    return await db.delete(
      challengeTable,
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
