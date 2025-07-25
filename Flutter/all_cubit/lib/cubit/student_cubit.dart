import 'package:all_cubit/model/student_model.dart';
import 'package:all_cubit/state/student_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentCubit extends Cubit<StudentState>{
  StudentCubit() : super(StudentState.initial());

  void addStudent(StudentModel student){
    emit(state.copyWith(isLoading: true));
    //wait for 1 sec, so that we can see loading
    Future.delayed(Duration(seconds: 1), (){
      emit(
        state.copyWith(
          lstStudent: state.lstStudent..add(student),
          isLoading: false
        )
      );
    });
  }

  void deleteStudent(int index){
    emit(state.copyWith(isLoading: true));
    Future.delayed(Duration(seconds: 1),(){
      emit(
        state.copyWith(
          lstStudent: state.lstStudent..removeAt(index),
          isLoading: false
        )
      );
    });
  }

}