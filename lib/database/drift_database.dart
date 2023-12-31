// private 값 불러 올 수 없다.
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
// private 값을 불러올 수 있다.
part 'drift_database.g.dart';




@DriftDatabase(
  tables: [
    Schedules,
    CategoryColors,
  ],
)
// _$
class LocalDatabase extends _$LocalDatabase{
  LocalDatabase() : super(_openConnection());
}

LazyDatabase _openConnection(){
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}