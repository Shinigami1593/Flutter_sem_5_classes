import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:student_management/app/constant/hive_table_constant.dart';
import 'package:student_management/features/course/domain/entity/course_entity.dart';
import 'package:uuid/uuid.dart';

part 'course_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.courseTableID)
class CourseHiveModel extends Equatable{
  @HiveField(0)
  final String courseId;
  @HiveField(1)
  final String courseName;

  CourseHiveModel({
    String? courseId,
    required this.courseName
  }) : courseId = courseId ?? Uuid().v4();

  const CourseHiveModel.initial() : courseId = '',courseName='';

  factory CourseHiveModel.fromEntity(CourseEntity entity){
    return CourseHiveModel(
      courseId: entity.courseId,
      courseName: entity.courseName
    );
  }

  CourseEntity toEntity() {
    return CourseEntity(
      courseId: courseId,
      courseName: courseName
    );
  }

  static List<CourseEntity> toEntityList(List<CourseHiveModel> entities){
    return entities.map((x) => x.toEntity()).toList();

  }

  @override
  List<Object?> get props => [courseId,courseName];
 }