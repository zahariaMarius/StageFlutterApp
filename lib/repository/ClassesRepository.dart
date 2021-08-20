import 'package:ripetizioni/data/Resuorce.dart';
import 'package:ripetizioni/data/model/classeslist/ClassesList.dart';
import 'package:ripetizioni/data/model/subjectlist/SubjectList.dart';
import 'package:ripetizioni/db/ClassesDao.dart';
import 'package:ripetizioni/db/SubjectDao.dart';
import 'package:ripetizioni/network/NetworkBoundResource.dart';
import 'package:ripetizioni/network/apiservice/subject/ClassesApiService.dart';

class ClassesRepository {
  ClassesApiService _classesApiService;
  ClassesDao _classesDao;
  SubjectDao _subjectDao;

  ClassesRepository(this._classesApiService, this._classesDao, this._subjectDao);

  Stream<Resource<SubjectList>> getGroupedClassesBySubject() {
    return NetworkBoundResource<SubjectList, SubjectList>().asStream(
        createCall: () => _classesApiService.getGroupedClassesBySubject(true),
        shouldFetch: (data) => true,
        loadFromDb: () => _subjectDao.getAllSubjects(),
        saveCallResult: (data) => Future(() => _subjectDao.insert(data)));
  }

  Stream<Resource<ClassesList>> getAllClassesBySubject(int subjectId) {
    return NetworkBoundResource<ClassesList, ClassesList>().asStream(
        createCall: () => _classesApiService.getAllClassesBySubject(false, subjectId),
        shouldFetch: (data) => true,
        loadFromDb: () => _classesDao.getAllClassesBySubject(subjectId),
        saveCallResult: (data) => Future(() => _classesDao.insert(data)));
  }

}