import 'package:flutter/material.dart';

import 'config/app_theme.dart';
import 'router/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),
     
    );
  }
}
