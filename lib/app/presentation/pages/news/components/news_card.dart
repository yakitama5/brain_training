import 'package:flutter/material.dart';

import '../../../../domain/news/model/entity/news.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.news,
    this.onTap,
  });

  final News news;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final decoration = news.urlToImage == null
        ? BoxDecoration(
            color: cs.secondary,
            borderRadius: BorderRadius.circular(12),
          )
        : BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(news.urlToImage!),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                cs.onBackground.withOpacity(0.7),
                BlendMode.srcATop,
              ),
            ),
          );

    return DecoratedBox(
      decoration: decoration,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          '${news.title}',
          maxLines: 5,
          style: TextStyle(
            color: cs.onSecondary,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
