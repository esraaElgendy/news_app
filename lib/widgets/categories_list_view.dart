import 'package:flutter/material.dart';
import '../views/category_view.dart';


class CategoriesListView extends StatelessWidget {
  final List<String> categories = [
    'business',
    'entertainment',
    'general',
    'health',
    'science',
    'sports',
    'technology'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return ListTile(
          title: Text(category.toUpperCase()),
          onTap: () {
            // نروح للصفحة اللي بتعرض الأخبار بناءً على الكاتيجوري
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryView(category: category),
              ),
            );
          },
        );
      },
    );
  }
}

