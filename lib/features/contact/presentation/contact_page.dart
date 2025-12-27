import 'package:flutter/material.dart';
import 'package:alqomaria_web/shared/widgets/base_page.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contactez-nous',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 24),
          Text(
            'Nous sommes à votre disposition pour toute question ou suggestion.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 32),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Informations de contact',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 24),
                        _buildContactItem(
                          context,
                          Icons.phone,
                          'Téléphone',
                          '+228 71 06 17 75',
                        ),
                        const SizedBox(height: 16),
                        _buildContactItem(
                          context,
                          Icons.email,
                          'Email',
                          'alqomaria@gmail.com',
                        ),
                        const SizedBox(height: 16),
                        _buildContactItem(
                          context,
                          Icons.location_on,
                          'Adresse',
                          'von a droite a 300m du commmissariat d agoè',
                        ),
                        const SizedBox(height: 16),
                        _buildContactItem(
                          context,
                          Icons.chat,
                          'WhatsApp',
                          '+228 71 06 17 75',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 32),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Envoyez-nous un message',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 24),
                        TextField(
                          decoration: const InputDecoration(
                            labelText: 'Nom',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          decoration: const InputDecoration(
                            labelText: 'Sujet',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          maxLines: 5,
                          decoration: const InputDecoration(
                            labelText: 'Message',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Envoyer'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(
    BuildContext context,
    IconData icon,
    String title,
    String value,
  ) {
    return Row(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary, size: 24),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(value, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
