import 'package:flutter/material.dart';
import 'package:modeep/core/modeep_color.dart';
import 'dart:async';

class MainScreenSliderWidget extends StatefulWidget {
  const MainScreenSliderWidget({super.key});

  @override
  State<MainScreenSliderWidget> createState() => _MainScreenSliderWidgetState();
}

class _MainScreenSliderWidgetState extends State<MainScreenSliderWidget> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  Timer? _timer;

  final List<String> images = [
    'assets/images/icon/main/main_slider.png',
    'assets/images/icon/main/main_slider.png',
    'assets/images/icon/main/main_slider.png',
    'assets/images/icon/main/main_slider.png',
    'assets/images/icon/main/main_slider.png',
    'assets/images/icon/main/main_slider.png',
    'assets/images/icon/main/main_slider.png',
    'assets/images/icon/main/main_slider.png'
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          width: 340,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const SizedBox(height: 13),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            images.length,
                (index) => buildIndicator(index),
          ),
        ),
      ],
    );
  }

  Widget buildIndicator(int index) {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index ? MoDeepColor.white : MoDeepColor.gray100,
      ),
    );
  }
}