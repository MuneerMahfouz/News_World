import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:world_news/data/models/news.dart';
import 'package:world_news/data/repository/news_repo.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewRepository newRepository;
  late List<AllNews> myNews;
  NewsCubit(this.newRepository) : super(NewsInitial());

  List getAllNews() {
    newRepository.getAllNewsFetchingData().then((news) {
      emit(NewsLoaded(news));
      myNews = news;
    });
    return myNews;
  }
}
