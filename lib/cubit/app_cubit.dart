import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../dio_helper.dart';
import '../news_model.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  AppCubit get(context) => BlocProvider.of(context);
  NewsModel? newsModel;
  getNews() {
    DioHelper.getData("top-headlines", queryParameters: {
      "country": "us",
      "category": "sport",
      "apiKey": "a269e4f1de864efc85f38b36f1bae318"
    }).then((value) {
      newsModel = NewsModel.fromJson(value?.data);
      print(newsModel?.articles[0].title);
    });
  }
}
