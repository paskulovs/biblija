import 'package:biblija/pages/choose_book_page.dart';
import 'package:biblija/pages/choose_chapter_page.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  static final GoRouter router =
      GoRouter(initialLocation: "/choose-book", routes: [
    GoRoute(
      path: '/choose-book',
      name: 'choose-book',
      builder: (context, GoRouterState state) => const ChooseBookPage(),
      routes: [
        GoRoute(
          path: 'choose-chapter/:book',
          name: 'choose-chapter',
          builder: (context, GoRouterState state) => ChooseChapterPage(
            bookReferenceId: state.pathParameters['book'],
          ),
        ),
      ],
    ),
  ]);
}
