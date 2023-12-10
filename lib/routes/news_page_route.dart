import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:metabrick/main.dart';
import 'package:metabrick/models/news_model.dart';

class NewsPageRoute extends StatefulWidget {
  final NewsModel newsModel;
  final int index;

  const NewsPageRoute({super.key, required this.newsModel, required this.index});

  @override
  State<NewsPageRoute> createState() => _NewsPageRouteState();
}

class _NewsPageRouteState extends State<NewsPageRoute> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: Image.asset(
              widget.newsModel.newsThumbnailImageLink,
              fit: BoxFit.cover,
            ),
          ),
        ];
      },
      body: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyApp.of(context).themeColor.shade800,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: MyApp.of(context).themeColor.shade700,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top),
                  Hero(
                    tag: "news_thumbnail_hero_widget${widget.index}",
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          widget.newsModel.newsThumbnailText,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 20, left: 10, right: 10),
                  child: Text(
                    _newsDescription,
                    softWrap: true,
                    style: const TextStyle(fontSize: 15, color: Colors.white70, fontWeight: FontWeight.w200),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  get _newsDescription => """Meta-verse Club Unveils Game-Changing Updates for Ultimate Virtual Experience!\n\n
Meta-verse Club, the leading virtual reality platform, has just announced a series of groundbreaking updates aimed at transforming the virtual experience. Here's a snapshot of the key highlights:\n
1). Next-Gen Realism:\n\nEnjoy lifelike avatars and stunning landscapes with cutting-edge graphics.\n\n
2). Enhanced Social Interaction:\n\nImproved gestures, voice chat, and communication tools for a more immersive social experience.\n
3). New Worlds:\n\nExplore diverse landscapes with the addition of futuristic cityscapes and magical realms.\n
4). Customizable Environments:\n\nPersonalize virtual spaces with an array of customization options.\n
5). Economy Overhaul:\n\nA revamped in-platform economy for dynamic virtual commerce and economic growth.\n
6). Cross-Platform Compatibility:\n\nAccess the metaverse seamlessly from VR headsets, desktops, and mobile devices.\n
These updates mark a significant leap forward in creating a more immersive, interconnected, and user-friendly metaverse. Stay tuned for more as Metaverse Club continues to redefine digital interactions!""";
}
