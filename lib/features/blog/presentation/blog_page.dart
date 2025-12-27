import 'package:flutter/material.dart';
import 'package:alqomaria_web/shared/widgets/base_page.dart';
import 'package:alqomaria_web/shared/models/article.dart';
import 'package:alqomaria_web/shared/services/mock_data_service.dart';
import 'package:intl/intl.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  late Future<List<Article>> _articlesFuture;

  @override
  void initState() {
    super.initState();
    _articlesFuture = DataService().getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Blog et Rappels',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 24),
          Text(
            'Articles islamiques et rappels spirituels pour votre édification.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 32),
          FutureBuilder<List<Article>>(
            future: _articlesFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Erreur: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('Aucun article trouvé.'));
              } else {
                return Column(
                  children: snapshot.data!
                      .map((article) => _buildArticleCard(context, article))
                      .toList(),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildArticleCard(BuildContext context, Article article) {
    return Card(
      margin: const EdgeInsets.only(bottom: 24),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Par ${article.author}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  DateFormat(
                    'dd MMMM yyyy',
                    'fr_FR',
                  ).format(article.publishedDate),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              article.content,
              style: Theme.of(context).textTheme.bodyLarge,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: article.tags
                  .map(
                    (tag) => Chip(
                      label: Text(tag),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondaryContainer,
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 16),
            TextButton(onPressed: () {}, child: const Text('Lire la suite')),
          ],
        ),
      ),
    );
  }
}
