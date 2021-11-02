import 'package:bloc/bloc.dart';
import 'package:eigital_flutter_assessment/models/article.dart';
import 'package:eigital_flutter_assessment/services/news_service.dart';
import 'package:equatable/equatable.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsService _newsApiService;

  NewsBloc({required NewsService newsApiService})
      : _newsApiService = newsApiService,
        super(NewsLoading()) {
    on<LoadLatestNews>(_onLoadLatestNews);
  }
   Future<void> _onLoadLatestNews(LoadLatestNews event, Emitter<NewsState> emit) async{
    emit(NewsLoaded(articles: await _newsApiService.getLatestNews()));
  }
}
