import 'package:eigital_flutter_assessment/news/bloc/news_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
      if (state is NewsLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is NewsLoaded) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Latest News'),
          ),
          body: ListView.builder(
            itemCount: state.articles.length,
            itemBuilder: (context, index){
              return Column(
                children: [
                  Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage('${state.articles[index].urlToImage}'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('${state.articles[index].title}', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('${state.articles[index].content}', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black54),),
                    ),
                    const SizedBox(height: 50,),
                ],
              );
            }),
        );
      }else{
        return Container();
      }
    });
  }
}
