import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/article_model.dart';

class News {
  List<ArticleModel> news = [];


// The api returns a `Photo` which contains metadata about the photo and urls to download it.

  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in &apiKey=1cefb8936a994d62bae2b1ce683aafc1';
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element['author'].toString(),
            title: element['title'],
            description: element['description'],
            url: element['url'],
            content: element['content'].toString(),
            urlToImage: element['urlToImage'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}


class CategoryNewsClass {
  List<ArticleModel> news = [];


// The api returns a `Photo` which contains metadata about the photo and urls to download it.

  Future<void> getCategoryNewsClass(String category) async {
    String url =
        'https://newsapi.org/v2/top-headlines?category=$category&country=in&apiKey=1cefb8936a994d62bae2b1ce683aafc1';
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element['author'].toString(),
            title: element['title'],
            description: element['description'],
            url: element['url'],
            content: element['content'].toString(),
            urlToImage: element['urlToImage'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
