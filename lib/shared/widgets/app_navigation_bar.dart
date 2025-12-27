import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alqomaria_web/core/app_providers.dart';

class AppNavigationBar extends ConsumerWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final themeNotifier = ref.read(themeModeProvider.notifier);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // Logo
          Text(
            'Al Qomaria - القمرية',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          // Navigation items
          _NavItem(label: 'Accueil', onTap: () => context.go('/')),
          const SizedBox(width: 24),
          _NavItem(label: 'À propos', onTap: () => context.go('/about')),
          const SizedBox(width: 24),
          _NavItem(label: 'Activités', onTap: () => context.go('/events')),
          const SizedBox(width: 24),
          _NavItem(label: 'Blog', onTap: () => context.go('/blog')),
          const SizedBox(width: 24),
          _NavItem(label: 'Contact', onTap: () => context.go('/contact')),
          const SizedBox(width: 24),
          _NavItem(label: 'Connexion', onTap: () => context.go('/auth')),
          const SizedBox(width: 24),
          // Theme toggle
          IconButton(
            icon: Icon(
              themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
            ),
            onPressed: () => themeNotifier.toggleTheme(),
            tooltip: 'Changer de thème',
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _NavItem({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
