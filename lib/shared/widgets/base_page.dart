import 'package:flutter/material.dart';
import 'package:alqomaria_web/shared/widgets/app_navigation_bar.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  final String? title;

  const BasePage({super.key, required this.child, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppNavigationBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(padding: const EdgeInsets.all(24.0), child: child),
            ),
          ),
          // Footer
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                // Islamic Quote
                Text(
                  '"Et tenez-vous tous ensemble à la corde d\'Allah et ne vous divisez pas."',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Coran 3:103',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 16),
                // Social Links or Additional Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.facebook, color: Theme.of(context).colorScheme.primary),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.email, color: Theme.of(context).colorScheme.primary),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.phone, color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  '© 2025 Al Qomaria - القمرية. Tous droits réservés.',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
