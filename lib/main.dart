import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:map_demo/firebase_options.dart';
import 'package:map_demo/utils/router.utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
final ref = ProviderContainer();
  runApp( UncontrolledProviderScope(
      container: ref,
      child: const MyApp(),
    ),);
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerPod);
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(fontFamily: "Montserrat"),
    );
  }
}