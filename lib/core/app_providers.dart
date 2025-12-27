import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Providers pour la gestion d'état globale
// Exemple: thème, authentification, données

final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>((
  ref,
) {
  return ThemeModeNotifier();
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier() : super(ThemeMode.light);

  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}

// Autres providers à ajouter selon les besoins
// final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier());
// final eventsProvider = FutureProvider<List<Event>>((ref) => fetchEvents());
