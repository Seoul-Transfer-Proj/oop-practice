import 'dart:async';
import 'package:flutter/material.dart';

import 'w_hot_news_icon.dart';

class HotNewsContainer extends StatefulWidget {
  final Map<String, List<String>> contents;
  final HotNewsIcon hotNewsIcon;

  const HotNewsContainer({
    super.key,
    required this.hotNewsIcon,
    required this.contents,
  });

  @override
  State<HotNewsContainer> createState() => _HotNewsContainerState();
}

class _HotNewsContainerState extends State<HotNewsContainer> {
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 1.0);
    _startAutoScroll();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(
      const Duration(seconds: 3),
          (_) {
        int currentPage = _pageController.page?.toInt() ?? 0;
        int nextPage = (currentPage + 1) % widget.contents['title']!.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: Colors.white),
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          widget.hotNewsIcon,
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              itemCount: widget.contents['title']!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.contents['title']![index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        widget.contents['subtitle']![index],
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
