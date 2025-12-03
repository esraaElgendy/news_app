
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
class NewsTile extends StatelessWidget {

  const NewsTile({super.key, required this.articalModel});

  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 16),
      child: Card(
        color: Colors.orange.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                articalModel.imageUrl ?? 'https://tse4.mm.bing.net/th/id/OIP.qcKx6OKzwpc14H9HLy6hegHaDt?rs=1&pid=ImgDetMain&o=7&rm=3',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                articalModel.title !,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(articalModel.subtitle ?? "No description available",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
