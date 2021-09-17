import 'package:dio/dio.dart';
import 'package:world_news/constants/const.dart';

class NewWebServices {
  late final Dio dio;

  NewWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: false,
    );
    dio = Dio(options);
  }

  Future getAllNews() async {
    Response response = await dio.get('top-headlines');
    return response.data;
  }
}
