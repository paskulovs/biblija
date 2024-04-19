import 'package:biblija/pages/choose_book_page.dart';
import 'package:biblija/pages/choose_chapter_page.dart';
import 'package:biblija/pages/verse_list_page.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  static final GoRouter router = GoRouter(initialLocation: "/books", routes: [
    GoRoute(
      path: '/books',
      name: 'books',
      builder: (context, GoRouterState state) => const ChooseBookPage(),
      routes: [
        GoRoute(
          path: ':book/chapters',
          name: 'chapters',
          builder: (context, GoRouterState state) => ChooseChapterPage(
            bookReferenceId: state.pathParameters['book'],
          ),
          routes: [
            GoRoute(
              path: ':chapter/verses',
              name: 'verses',
              builder: (context, GoRouterState state) => VerseListPage(
                selectedBook: state.pathParameters['book'],
                selectedChapter: state.pathParameters['chapter'],
                selectedVerse: state.uri.queryParameters['verse'],
              ),
            ),
          ],
        ),
      ],
    ),
  ]);
}
