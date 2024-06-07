import 'package:flutter/material.dart';
import 'package:flutter_graphql_showcase/domain/dependency_injection/dependency_injection.dart';

import 'package:flutter_graphql_showcase/presentation/views/screens/home_page.dart';

Future<void> main() async {
  runApp(const MyApp());
  await DependencyInjection().init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
