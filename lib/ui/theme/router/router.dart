import 'package:dh_coffee/ui/pages/develop_page.dart';
import 'package:dh_coffee/ui/theme/router/page_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Provide GoRouter
final goRouterProvider = Provider(
  (ref) {
    final routes = [
      // GoRoute(
      //   path: PageId.list.path,
      //   name: PageId.list.routeName,
      //   builder: (context, state) {
      //     return const ListPage();
      //   },
      // ),
      // GoRoute(
      //   path: PageId.detail.path,
      //   name: PageId.detail.routeName,
      //   pageBuilder: (context, state) {
      //     final pokemon = state.extra as Pokemon;
      //     return MaterialPage(
      //       fullscreenDialog: true,
      //       child: DetailPage(
      //         pokemon: pokemon,
      //       ),
      //     );
      //   },
      // ),
      GoRoute(
        path: PageId.develop.path,
        name: PageId.develop.routeName,
        builder: (context, state) {
          return const DevelopPage();
        },
      ),
    ];

    return GoRouter(
      initialLocation: PageId.develop.path,
      debugLogDiagnostics: false,
      routes: routes,
    );
  },
);
