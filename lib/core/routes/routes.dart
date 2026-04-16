import 'package:go_router/go_router.dart';
import 'package:se7ety/features/welcome/splash/screens/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

  static var routes = GoRouter(
    routes: [
      GoRoute(path: splash, builder: (context, state) => const SplashScreen()),
    ],
  );
}
