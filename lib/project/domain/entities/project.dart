import 'package:isar/isar.dart';

part 'project.g.dart';

@collection
class Project {
  Id id = Isar.autoIncrement;

  String? name;
  List<String>? users;
  List<String>? endpoints ;
}
