import 'package:hive/hive.dart';
import 'package:ripetizioni/data/model/subject/Subject.dart';
import 'package:ripetizioni/data/model/subjectlist/SubjectList.dart';

class SubjectDao {
  final String _boxName = 'subjectBox';

  insert(SubjectList subjectList) async {
    Box box = await Hive.openBox<Subject>(_boxName);
    await box.clear();
    subjectList.data.forEach((element) async {
      await box.put(element.id, element);
    });
  }

  Future<SubjectList> getAllSubjects() async {
    Box<Subject> box = await Hive.openBox<Subject>(_boxName);
    SubjectList subjectList = SubjectList(box.values.toList());
    return subjectList;
  }
}