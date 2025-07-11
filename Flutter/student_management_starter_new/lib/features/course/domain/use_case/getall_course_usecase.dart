import 'package:dartz/dartz.dart';
import 'package:student_management/core/common/usecase.dart';
import 'package:student_management/core/error/failure.dart';
import 'package:student_management/features/course/domain/entity/course_entity.dart';
import 'package:student_management/features/course/domain/repository/course_repository.dart';

class GetallCourseUsecase implements UsecaseWithoutParams<List<CourseEntity>>{
  final ICourseRepository courseRepository;

  GetallCourseUsecase({required this.courseRepository});
  
  @override
  Future<Either<Failure, List<CourseEntity>>> call() {
    return courseRepository.getCourses();
  }
}