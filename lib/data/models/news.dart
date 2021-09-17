class AllNews {
  late String status;
  late int totalResult;
  late List<Articles> articles;
  AllNews.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResult = json['totalResults'];
  }
}

class Articles {
  late Source source;
  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String publishedAt;
  late String content;

  Articles.fromJson(Map data) {
    author = data['author'];
    title = data['title'];
    description = data['description'];
    url = data['url'];
    urlToImage = data['urlToImage'];
    publishedAt = data['publishedAt'];
    content = data['content'];
  }
}

class Source {
  late String id;
  late String name;
  Source.fromJson(Map json) {
    id = json['id'];
    name = json['name'];
  }
}
