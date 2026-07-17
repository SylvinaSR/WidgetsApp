import 'package:flutter/material.dart';

class SlidesInfo {
  final String title;
  final String caption;
  final String imageURL;

  SlidesInfo({
    required this.title,
    required this.caption,
    required this.imageURL,
  });
}

final slides = <SlidesInfo>[
  SlidesInfo(
    title: 'Busca la comida',
    caption:
        'Duis duis enim do nulla proident sit aute cupidatat consequat cillum.',
    imageURL: 'assets/images/1.png',
  ),
  SlidesInfo(
    title: 'Entrega rápida',
    caption:
        'Enim cupidatat nulla fugiat exercitation sunt irure laboris sunt non laboris est proident et irure.',
    imageURL: 'assets/images/2.png',
  ),
  SlidesInfo(
    title: 'Disfruta la comida',
    caption:
        'Dolor anim officia eiusmod laboris consequat reprehenderit do mollit commodo nisi in dolore nostrud.',
    imageURL: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatelessWidget {
  static const String name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map(
              (slideData) => _Slide(
                title: slideData.title,
                caption: slideData.caption,
                imageUrl: slideData.imageURL,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
