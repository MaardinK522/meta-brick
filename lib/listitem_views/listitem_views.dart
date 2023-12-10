import 'package:flutter/material.dart';
import 'package:metabrick/main.dart';
import 'package:metabrick/models/news_model.dart';
import 'package:metabrick/routes/news_page_route.dart';
import 'package:metabrick/widgets/custom/unpressed_neumorphic_button.dart';

class NewsListItemView extends StatelessWidget {
  final NewsModel newsModel;
  final int index;

  const NewsListItemView({super.key, required this.newsModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: UnpressedNeumorphicButton(
        borderRadius: 20,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => NewsPageRoute(
                  newsModel: newsModel,
                  index: index,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(
                tag: "news_image_hero_widget$index",
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  child: Image.asset(
                    newsModel.newsThumbnailImageLink,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.maxFinite,
                  ),
                ),
              ),
              Hero(
                tag: "news_thumbnail_hero_widget$index",
                child: Container(
                  decoration: BoxDecoration(
                    color: MyApp.of(context).themeColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        newsModel.newsThumbnailText,
                        maxLines: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
