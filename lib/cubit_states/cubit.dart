import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_1/cubit_states/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());

  AppCubit get(context) => BlocProvider.of(context);

  bool isScure = true;

  scureText() {
    isScure = !isScure;
    emit(AppScureTextState());
  }
}
