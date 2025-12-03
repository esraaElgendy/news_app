class ArticalModel {
  final String? imageUrl;
  final String? title;
  final String? subtitle;
  //final SourceModel? source;
  ArticalModel({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
   // required this.source,
  });
}

class SourceModel {
  final String id;
  final String name;

  const SourceModel({required this.id, required this.name});
}



// class ArticalModel {
//   Source? source;
//   String? author;
//   String? title;
//   String? description;
//   String? url;
//   String? urlToImage;
//   String? publishedAt;
//   String? content;
//
//   ArticalModel(
//       {this.source,
//         this.author,
//         this.title,
//         this.description,
//         this.url,
//         this.urlToImage,
//         this.publishedAt,
//         this.content});
//
//   ArticalModel.fromJson(Map<String, dynamic> json) {
//     source =
//     json['source'] != null ? new Source.fromJson(json['source']) : null;
//     author = json['author'];
//     title = json['title'];
//     description = json['description'];
//     url = json['url'];
//     urlToImage = json['urlToImage'];
//     publishedAt = json['publishedAt'];
//     content = json['content'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.source != null) {
//       data['source'] = this.source!.toJson();
//     }
//     data['author'] = this.author;
//     data['title'] = this.title;
//     data['description'] = this.description;
//     data['url'] = this.url;
//     data['urlToImage'] = this.urlToImage;
//     data['publishedAt'] = this.publishedAt;
//     data['content'] = this.content;
//     return data;
//   }
// }
//
// class Source {
//   Null? id;
//   String? name;
//
//   Source({this.id, this.name});
//
//   Source.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     return data;
//   }
// }