
import 'dart:convert';
import 'package:eigital_flutter_assessment/models/article.dart';
import 'package:http/http.dart' as http;

const String _url = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5155854cf8e44a84b2aa0ab554377e26';

class NewsService{
  
  List<Article> articles = [];

  Future<List<Article>> getLatestNews() async{
    Uri uri = Uri.parse(_url);
    http.Response response = await http.get(uri);
    var jsonData = jsonDecode(response.body) as Map<String, dynamic>;

    for (var article in (jsonData['articles'] as List<dynamic>)) {
      articles.add(Article(
        author: article['author'],
        title: article['title'],
        description: article['description'],
        url: article['url'],
        urlToImage: article['urlToImage'],
        publishedAt: article['publishedAt'],
        content: article['content']
      ));
    }
    return articles;
  }
}