part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();
  
  @override
  List<Object> get props => [];
}

class NewsLoading extends NewsState {}

class NewsLoaded extends NewsState{
  final List<Article> articles;
  const NewsLoaded({required this.articles});

  @override
  List<Object> get props => [articles];
}
