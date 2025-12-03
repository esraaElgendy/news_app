import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

import '../main.dart';

class NewsServices{

 final Dio dio = Dio();
//NewsServices( this.dio) ;   // constractor

  Future<List<ArticalModel>> getNews({required String category }) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=071c53289fb44c16802a8dea6847ce8c&category=$category",
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticalModel> articlesList = [];

      for (var article in articles) {
        ArticalModel articalModel = ArticalModel(
          imageUrl: article["urlToImage"],
          title: article["title"],
          subtitle: article["description"],
        );
        articlesList.add(articalModel);
      }

      return articlesList;
    } catch (e) {
      print("Error getting news: $e");
      return [];
    }
  }


}



