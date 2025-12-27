import 'package:go_router/go_router.dart';
import 'package:alqomaria_web/features/home/presentation/home_page.dart';
import 'package:alqomaria_web/features/about/presentation/about_page.dart';
import 'package:alqomaria_web/features/events/presentation/events_page.dart';
import 'package:alqomaria_web/features/blog/presentation/blog_page.dart';
import 'package:alqomaria_web/features/contact/presentation/contact_page.dart';
import 'package:alqomaria_web/features/auth/presentation/auth_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/about',
        name: 'about',
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: '/events',
        name: 'events',
        builder: (context, state) => const EventsPage(),
      ),
      GoRoute(
        path: '/blog',
        name: 'blog',
        builder: (context, state) => const BlogPage(),
      ),
      GoRoute(
        path: '/contact',
        name: 'contact',
        builder: (context, state) => const ContactPage(),
      ),
      GoRoute(
        path: '/auth',
        name: 'auth',
        builder: (context, state) => const AuthPage(),
      ),
    ],
  );
}
