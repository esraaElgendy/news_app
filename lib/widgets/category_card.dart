import 'package:flutter/material.dart';
import 'package:news_app/views/category_view.dart';
import '../models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryView(category: categoryModel.categoryName),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.orangeAccent,
          ),
          //any edit ok?
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  categoryModel.image,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.3),
                ),
                Center(
                  child: Text(
                    categoryModel.categoryName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          blurRadius: 4,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

