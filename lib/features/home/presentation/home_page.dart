import 'package:flutter/material.dart';
import 'package:alqomaria_web/shared/widgets/base_page.dart';
import 'package:alqomaria_web/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hero Section with Image
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppTheme.primaryGreen,
                  AppTheme.islamicBlue,
                  AppTheme.secondaryGold,
                  AppTheme.islamicBurgundy,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Stack(
              children: [
                // Background Image
                Positioned.fill(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1609592806500-3b0c4b4b8b8b?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80', // Stunning mosque exterior
                    fit: BoxFit.cover,
                    opacity: AlwaysStoppedAnimation(0.3),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.nightlight_round, // Symbole de lune
                        size: 80,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Bienvenue à Al Qomaria - القمرية',
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Élever la communauté à travers le Qur\'an, la science utile et la fraternité sincère',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          // Citation
          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    '"Et tenez-vous tous ensemble à la corde d\'Allah et ne vous divisez pas."',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Coran 3:103',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          // Islamic Images Gallery
          Text(
            'Découvrez notre héritage islamique',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 20),
          GridView.count(
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              _buildImageCard(
                'https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Islamic calligraphy Quran
                'Calligraphie coranique',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1542816417-0983c9c9ad1c?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Blue Mosque Istanbul
                'Mosquée bleue d\'Istanbul',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1594736797933-d0401ba2fe65?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Open Quran
                'Coran ouvert',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1609592806500-3b0c4b4b8b8b?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Alhambra architecture
                'Alhambra d\'Espagne',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1582515073490-39981397c445?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Grand Mosque of Mecca
                'Grande Mosquée de La Mecque',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Quran with prayer beads
                'Coran et chapelet',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1542816417-0983c9c9ad1c?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Taj Mahal
                'Taj Mahal',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1594736797933-d0401ba2fe65?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Ancient Quran manuscript
                'Manuscrit coranique ancien',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1582515073490-39981397c445?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Sultan Ahmed Mosque
                'Mosquée Sultan Ahmet',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Islamic geometric art
                'Art géométrique islamique',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1542816417-0983c9c9ad1c?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Dome of the Rock
                'Dôme du Rocher',
              ),
              _buildImageCard(
                'https://images.unsplash.com/photo-1594736797933-d0401ba2fe65?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80', // Quran reading
                'Lecture du Coran',
              ),
            ],
          ),
          const SizedBox(height: 40),
          // Appel à l'engagement
          Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppTheme.islamicTeal.withOpacity(0.1),
                  AppTheme.islamicPurple.withOpacity(0.1),
                  AppTheme.islamicOrange.withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Text(
                  'Rejoignez notre communauté',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Participez à nos activités, apprenez ensemble et grandissez spirituellement dans un environnement bienveillant.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.islamicBlue,
                        foregroundColor: AppTheme.surfaceWhite,
                      ),
                      child: const Text('S\'inscrire'),
                    ),
                    const SizedBox(width: 16),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppTheme.islamicBurgundy),
                        foregroundColor: AppTheme.islamicBurgundy,
                      ),
                      child: const Text('En savoir plus'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageCard(String imageUrl, String title) {
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
