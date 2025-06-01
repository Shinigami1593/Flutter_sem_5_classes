
import 'package:all_cubit/cubit/arithmetic_cubit.dart';
import 'package:all_cubit/cubit/counter_cubit.dart';
import 'package:all_cubit/cubit/student_cubit.dart';
import 'package:all_cubit/view/arithmetic_cubit_view.dart';
import 'package:all_cubit/view/counter_cubit_view%20copy.dart';
import 'package:all_cubit/view/student_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void>{
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;

  void openCounterView(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: CounterCubitView(),
        ), 
      )
    );
  }

  void openArithmeticCubit(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticCubit,
          child: ArithmeticCubitView(),
        ), 
      )
    );
  }

  void openStudentCubit(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentCubit,
          child: StudentView(),
        ), 
      )
    );
  }

}