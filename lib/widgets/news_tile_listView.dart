import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_services.dart';
import 'news_tile.dart';
class NewsTileListview extends StatefulWidget {

  const NewsTileListview({super.key});

  @override
  State<NewsTileListview> createState() => _NewsTileListviewState();
}

class _NewsTileListviewState extends State<NewsTileListview> {
  List<ArticalModel> articles = [];

  bool isLoading = true;
  @override

  void initState(){
    super.initState();
    getGeneralNews();
  }
Future<void>getGeneralNews() async {
  articles= await NewsServices().getNews(category: "general");
  isLoading = false;
  setState(() {});
  }

  @override
  Widget build(BuildContext context) {
       return isLoading ? SliverToBoxAdapter(
           child: Center(
               child: CircularProgressIndicator())):
       SliverList(delegate: SliverChildBuilderDelegate(
      childCount:articles.length,
          (context, index) {
      return NewsTile(
        articalModel: articles[index],
      );
    },));



    //   ListView.separated(
    //
    //     itemBuilder: (context, index) {
    //       return const NewsTile();
    //     },
    //     separatorBuilder: (context, index) {
    //       return const SizedBox(height: 10);
    //     },
    //     itemCount: 10
    // );
  }
}
