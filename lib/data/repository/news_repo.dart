import 'package:world_news/data/models/news.dart';
import 'package:world_news/data/web_services/news_web_services.dart';

class NewRepository {
  NewWebServices newWebServices;
  NewRepository(this.newWebServices);

  Future getAllNewsFetchingData() async {
    final news = await newWebServices.getAllNews();
    return news.map((news) => AllNews.fromJson(news)).toList;
  }

  Future getArticlesFetchingData() async {
    final news = await newWebServices.getAllNews();
    return news.map((news) => Articles.fromJson(news)).toList;
  }

  Future getSourcesFetchingData() async {
    final news = await newWebServices.getAllNews();
    return news.map((news) => Source.fromJson(news)).toList;
  }
}
