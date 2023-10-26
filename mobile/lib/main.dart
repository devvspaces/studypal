import 'package:flutter/material.dart';
import 'package:mobile/app_theme.dart';
import 'package:mobile/routers/app_router.dart';
import 'package:mobile/screens/authentication/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      // Add the theme extensions
      theme: AppTheme.lightTheme,
      initialRoute: SplashScreen.routePath,
    );
  }
}