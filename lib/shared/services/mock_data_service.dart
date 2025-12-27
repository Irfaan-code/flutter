import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:alqomaria_web/shared/models/event.dart';
import 'package:alqomaria_web/shared/models/article.dart';

class DataService {
  final supabase = Supabase.instance.client;

  Future<List<Event>> getEvents() async {
    try {
      final response = await supabase.from('events').select();
      return response.map((e) => Event.fromJson(e)).toList();
    } catch (e) {
      // Fallback to mock data if Supabase fails
      return _getMockEvents();
    }
  }

  Future<List<Article>> getArticles() async {
    try {
      final response = await supabase.from('articles').select();
      return response.map((a) => Article.fromJson(a)).toList();
    } catch (e) {
      // Fallback to mock data
      return _getMockArticles();
    }
  }

  // Mock data as fallback
  List<Event> _getMockEvents() {
    return [
      Event(
        id: '1',
        title: 'Cours de Coran',
        description: 'Apprentissage collectif du Saint Coran avec tajwid.',
        date: DateTime(2025, 12, 25, 19, 0),
        location: 'Salle de prière principale',
        imageUrl: 'https://images.unsplash.com/photo-1594736797933-d0401ba2fe65?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
      ),
      Event(
        id: '2',
        title: 'Prière collective',
        description: 'Prière du vendredi suivie d\'un sermon.',
        date: DateTime(2025, 12, 27, 13, 0),
        location: 'Mosquée Al Qomaria',
        imageUrl: 'https://images.unsplash.com/photo-1542816417-0983c9c9ad1c?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
      ),
      Event(
        id: '3',
        title: 'Conférence sur l\'Islam',
        description: 'Conférence sur les valeurs islamiques modernes.',
        date: DateTime(2025, 12, 15, 18, 0),
        location: 'Salle communautaire',
        imageUrl: 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
      ),
      Event(
        id: '4',
        title: 'Étude des hadiths',
        description: 'Session d\'étude des hadiths authentiques du Prophète.',
        date: DateTime(2025, 12, 30, 20, 0),
        location: 'Bibliothèque islamique',
        imageUrl: 'https://images.unsplash.com/photo-1582515073490-39981397c445?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
      ),
      Event(
        id: '5',
        title: 'Cours d\'arabe',
        description: 'Apprentissage de la langue arabe pour débutants.',
        date: DateTime(2025, 12, 22, 17, 0),
        location: 'Salle d\'étude',
        imageUrl: 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
      ),
      Event(
        id: '6',
        title: 'Réunion familiale',
        description: 'Rencontre communautaire pour renforcer les liens fraternels.',
        date: DateTime(2025, 12, 28, 16, 0),
        location: 'Jardin communautaire',
        imageUrl: 'https://images.unsplash.com/photo-1542816417-0983c9c9ad1c?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
      ),
    ];
  }

  List<Article> _getMockArticles() {
    return [
      Article(
        id: '1',
        title: 'L\'importance de la communauté dans l\'Islam',
        content: 'La communauté (Ummah) est au cœur de l\'Islam...',
        author: 'Cheikh Ahmed',
        publishedDate: DateTime(2025, 12, 20),
        tags: ['communauté', 'islam'],
      ),
      Article(
        id: '2',
        title: 'Le savoir utile selon le Prophète',
        content: 'Le Prophète Muhammad (ﷺ) a dit : "Cherchez le savoir..."',
        author: 'Oum Fatima',
        publishedDate: DateTime(2025, 12, 18),
        tags: ['savoir', 'hadith'],
      ),
    ];
  }
}
