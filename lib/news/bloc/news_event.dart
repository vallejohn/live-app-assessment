part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object> get props => [];
}

class LoadLatestNews extends NewsEvent{
  @override
  List<Object> get props => [];
}
