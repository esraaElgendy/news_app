import 'package:flutter/material.dart';

import '../services/news_services.dart';
class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.toUpperCase())),
      body: FutureBuilder(
        future: NewsServices().getNews(category: category),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error loading articles"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No articles found"));
          } else {
            final articles = snapshot.data!;
            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: articles.length,
                        (context, index) {
                      final article = articles[index];
                      return ListTile(
                        leading: article.imageUrl != null
                            ? Image.network(article.imageUrl!, width: 100, fit: BoxFit.cover)
                            : const SizedBox(width: 100),
                        title: Text(article.title ?? "No title"),
                        subtitle: Text(article.subtitle ?? "No description"),
                      );
                    },
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }
}

