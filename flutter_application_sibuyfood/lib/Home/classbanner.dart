// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, unused_element, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';

final List<String> imagenet = [
  'https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_960_720.jpg',
  'https://cdn.pixabay.com/photo/2021/09/20/06/55/spaghetti-6639970_1280.jpg',
];

late List<Widget> _pages;
int _activePages = 0;
final PageController _pageController = PageController(initialPage: 0);
Timer? _timer;

class BannerSlider extends StatefulWidget {
  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  @override
  void initState() {
    super.initState();
    _pages = List.generate(
      imagenet.length,
      (index) => Imagebanber(
        imagenet: imagenet[index],
      ),
    );
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 4), (timer) {
      if (_pageController.hasClients) {
        if (_pageController.page == imagenet.length - 1) {
          _pageController.animateToPage(0,
              duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
        } else {
          _pageController.nextPage(
              duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Appcolor.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SizedBox(
                    width: 370,
                    height: 180,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: imagenet.length,
                      onPageChanged: (value) {
                        setState(() {
                          _activePages = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        return _pages[index];
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                        _pages.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: InkWell(
                                onTap: () {
                                  _pageController.animateToPage(index,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeIn);
                                },
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: _activePages == index
                                      ? Colors.yellow
                                      : Colors.grey,
                                ),
                              ),
                            )),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Imagebanber extends StatelessWidget {
  final String? imagenet;
  const Imagebanber({super.key, this.imagenet});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imagenet!,
      fit: BoxFit.cover,
    );
  }
}
