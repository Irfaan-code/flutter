# Al Qomaria - القمرية

Site web institutionnel de la communauté Al Qomaria, dédié à l'éducation islamique et à la fraternité.

## Description

Ce projet Flutter Web présente la communauté Al Qomaria avec ses valeurs, activités et moyens de contact. Le site est conçu pour être sobre, spirituel et respectueux des principes islamiques.

## Fonctionnalités

- **Accueil** : Présentation de la communauté avec citation coranique
- **À propos** : Vision, mission et valeurs
- **Activités** : Liste des événements communautaires
- **Blog** : Articles islamiques et rappels spirituels
- **Contact** : Informations de contact et formulaire

## Architecture

Le projet suit une architecture propre avec séparation des responsabilités :

```
lib/
├── core/           # Routage et providers globaux
├── theme/          # Thème et styles
├── features/       # Pages fonctionnelles
│   ├── home/
│   ├── about/
│   ├── events/
│   ├── blog/
│   └── contact/
├── shared/         # Composants et services réutilisables
│   ├── widgets/
│   ├── models/
│   └── services/
└── main.dart
```

## Technologies

- **Frontend** : Flutter Web (Material 3)
- **State Management** : Riverpod
- **Routing** : go_router
- **Internationalisation** : Préparé pour FR/AR
- **Backend** : Firebase (architecture prête)

## Installation et Lancement

1. Installer Flutter : `snap install flutter --classic`
2. Cloner le projet
3. Installer les dépendances : `flutter pub get`
4. Lancer en développement : `flutter run -d web`
5. Construire pour production : `flutter build web --release`
6. Servir les fichiers dans `build/web`

## Déploiement

Pour partager le site web, déployez-le sur une plateforme d'hébergement :

### Firebase Hosting

1. Installer Firebase CLI : `npm install -g firebase-tools`
2. Se connecter : `firebase login`
3. Initialiser : `firebase init hosting`
4. Déployer : `firebase deploy`

### Netlify

1. Créer un compte sur Netlify
2. Glisser-déposer le dossier `build/web` sur le dashboard
3. Obtenir l'URL publique

### GitHub Pages

1. Pousser le projet sur GitHub
2. Activer GitHub Pages dans les settings
3. Utiliser une action pour déployer automatiquement

## Contribution

Ce projet est maintenu par l'équipe de développement d'Al Qomaria. Pour contribuer, veuillez contacter l'administrateur.

## Licence

© 2025 Al Qomaria - القمرية. Tous droits réservés.
