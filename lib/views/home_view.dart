import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:news_app/widgets/news_tile_listView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body:CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child:CategoriesListView()),
          SliverToBoxAdapter(child:SizedBox(height: 20)),
           NewsTileListview(),
        ///// SliverToBoxAdapter(child: NewsTileListview()),
        ],
      )

      // Column(
      //   children: [
      //     CategoriesListView(), // يفترض أنها قائمة أفقية
      //     const SizedBox(height: 20),
      //     // تأكدي إن NewsTileListview جواته ListView أو أي Scrollable
      //     Expanded(
      //       child: NewsTileListview(),
      //     ),
      //
      //   ],
      // ),

    );
  }
  }
