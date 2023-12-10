import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:metabrick/listitem_views/listitem_views.dart';
import 'package:metabrick/models/news_model.dart';

class NewsPageTabRoute extends StatefulWidget {
  const NewsPageTabRoute({super.key});

  @override
  State<NewsPageTabRoute> createState() => _NewsPageTabRouteState();
}

class _NewsPageTabRouteState extends State<NewsPageTabRoute> {
  final _newsTypes = [
    "ALL",
    "EVENTS",
    "UPDATES",
    "TECHNICAL",
    "WIN STREAK",
    "LEARDERBOARDS",
  ];
  final List<int> _selectedIndexes = [0];
  final PageController _newsPageViewController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        children: [
          const SizedBox(height: 10),
          ChipList(
            listOfChipNames: _newsTypes,
            listOfChipIndicesCurrentlySeclected: _selectedIndexes,
            activeBorderColorList: const [Colors.white],
            inactiveTextColorList: const [Colors.white70],
            activeTextColorList: const [Colors.white],
            activeBgColorList: const [Colors.black54],
            inactiveBgColorList: const [Colors.black26],
            borderRadiiList: const [5],
            padding: const EdgeInsets.all(5),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Center(
              child: ListView.builder(
                controller: _newsPageViewController,
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (ctx, index) => NewsListItemView(
                  newsModel: NewsModel(
                    newsThumbnailImageLink: "assets/news.jpg",
                    newsThumbnailText: "Meta-verse Club Unleashes Virtual Revolution: Next-Gen Graphics, Enhanced Social Interaction, and More!",
                  ),
                  index: index,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
