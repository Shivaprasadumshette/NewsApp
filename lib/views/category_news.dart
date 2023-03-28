import 'package:flutter/material.dart';
import 'package:newsapp/helper/news.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/views/home.dart';

class CategoryNews extends StatefulWidget {

  final String category;
  CategoryNews({ required this.category});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {

  List<ArticleModel> articles = <ArticleModel>[];
  bool _loading = true;

  @override
  void initState(){
    super.initState();
    getCategoryNews();
  }
  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getCategoryNewsClass(widget.category);
    articles = newsClass.news;
    // print("shiva");
    // print(articles);
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Flutter",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              "News",
              style: TextStyle(
                color: Colors.blue,
              ),
            )
          ],
        ),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 16),
              child: ListView.builder(
                  itemCount: articles.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {

                    return BlogTile(
                        imageUrl: articles[index].urlToImage,
                        title: articles[index].title,
                        desc: articles[index].description,
                        url: articles[index].url);

                  }),
            ),
          ],
        )
      ),
    );
  }
}
