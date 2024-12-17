import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:map_demo/app_routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.utils.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: FirebaseAuth.instance.currentUser != null
        ? FirebaseAuth.instance.currentUser?.displayName?.isNotEmpty == true
            ? "/profile_page"
            : "/create_profile"
        : "/login_options",
    routes: $appRoutes,
  );
}
