import 'package:biblija/pages/choose_book_page.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  static final GoRouter router = GoRouter(
    initialLocation: "/choose-book",
      routes: [
        GoRoute(
          path: '/choose-book',
          name: 'choose-book',
          builder: (context, GoRouterState state) => const ChooseBookPage(),
        )
      ]
  );
}