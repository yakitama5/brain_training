import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../domain/news/model/entity/news.dart';
import '../../../components/importer.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.news,
    required this.radius,
    this.onTap,
  });

  final News news;
  final VoidCallback? onTap;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final hasImage = news.urlToImage != null;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(radius),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Stack(
          fit: StackFit.expand,
          children: [
            hasImage
                ? _Image(url: news.urlToImage!, radius: radius)
                : const _ColoredBackground(),
            Padding(
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
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({required this.url, required this.radius});

  final String url;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.fitHeight,
      color: cs.secondary.withOpacity(0.7),
      colorBlendMode: BlendMode.srcATop,
      progressIndicatorBuilder: (_, __, ___) =>
          const ShimmerWidget.rectangular(height: double.infinity),
      errorWidget: (_, __, ___) => const _ColoredBackground(),
    );
  }
}

class _ColoredBackground extends StatelessWidget {
  const _ColoredBackground();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return ColoredBox(color: cs.secondary);
  }
}
