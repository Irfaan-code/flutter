import 'package:flutter/material.dart';
import 'package:alqomaria_web/shared/widgets/base_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hero Image
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: NetworkImage('https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Center(
                child: Text(
                  'À propos d\'Al Qomaria',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          _buildSection(
            context,
            'Notre Vision',
            'Élever la communauté à travers le Qur\'an, la science utile et la fraternité sincère.',
            'https://images.unsplash.com/photo-1542816417-0983c9c9ad1c?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
          ),
          const SizedBox(height: 32),
          _buildSection(
            context,
            'Notre Mission',
            'Créer un espace d\'apprentissage et de croissance spirituelle pour les musulmans francophones et arabophones, en promouvant les valeurs islamiques authentiques dans un monde moderne.',
            'https://images.unsplash.com/photo-1582515073490-39981397c445?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
          ),
          const SizedBox(height: 32),
          Text('Nos Valeurs', style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 16),
          _buildValueCard(
            context,
            Icons.self_improvement,
            'Spiritualité',
            'Approfondir notre connexion avec Allah et suivre le chemin du Prophète.',
            'https://images.unsplash.com/photo-1594736797933-d0401ba2fe65?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80',
          ),
          const SizedBox(height: 16),
          _buildValueCard(
            context,
            Icons.school,
            'Savoir',
            'Rechercher et partager la connaissance utile selon les enseignements islamiques.',
            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80',
          ),
          const SizedBox(height: 16),
          _buildValueCard(
            context,
            Icons.group,
            'Discipline',
            'Maintenir l\'ordre et la régularité dans nos pratiques et nos engagements.',
            'https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80',
          ),
          const SizedBox(height: 16),
          _buildValueCard(
            context,
            Icons.handshake,
            'Unité',
            'Renforcer les liens fraternels et communautaires entre les croyants.',
            'https://images.unsplash.com/photo-1521791136064-7986c2920216?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80',
          ),
          const SizedBox(height: 32),
          Text('Galerie Islamique', style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
                'Calligraphie du nom d\'Allah',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1542816417-0983c9c9ad1c?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
                'Mosquée de Cordoue',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1594736797933-d0401ba2fe65?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
                'Pages sacrées du Coran',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1609592806500-3b0c4b4b8b8b?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
                'Palais de l\'Alhambra',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1582515073490-39981397c445?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
                'Mosquée Hassan II',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
                'Art islamique marocain',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content, String imageUrl) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: 16),
                  Text(content, style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
            const SizedBox(width: 24),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildValueCard(
    BuildContext context,
    IconData icon,
    String title,
    String description,
    String imageUrl,
  ) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Icon(icon, size: 48, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGalleryImage(String imageUrl, String title) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.image_not_supported, size: 50),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
