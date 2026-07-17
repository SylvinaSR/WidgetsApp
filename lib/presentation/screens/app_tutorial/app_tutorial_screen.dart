import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
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
          Positioned(
            right: 20,
            top: 60,
            child: TextButton(
              onPressed: () => context.pop(),
              child: Text('Salir'),
            ),
          ),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: Text('Comenzar'),
                    ),
                  ),
                )
              : SizedBox(),
        ],
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
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageUrl)),
          const SizedBox(height: 20),
          Text(title, style: titleStyle),
          SizedBox(height: 10),
          Text(caption, style: captionStyle),
        ],
      ),
    );
  }
}
