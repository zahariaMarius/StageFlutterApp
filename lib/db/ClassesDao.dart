import 'package:hive/hive.dart';

import 'package:ripetizioni/data/model/classes/Classes.dart';
import 'package:ripetizioni/data/model/classeslist/ClassesList.dart';

class ClassesDao {
  final String _boxName = 'classesBox';

  insert(ClassesList classesList) async {
    Box box = await Hive.openBox<Classes>(_boxName);
    await box.clear();
    classesList.data.forEach((element) async {
      await box.put(element.id, element);
    });
  }

  Future<ClassesList> getAllClassesBySubject(int subjectId) async {
    Box<Classes> box = await Hive.openBox<Classes>(_boxName);
    ClassesList classesList = ClassesList(box.values.where((classes) => classes.subjectId == subjectId).toList());
    return classesList;
  }
}
