import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_app/color_schemes.g.dart';
import 'package:theme_app/ui/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final base = ThemeData.light().textTheme;
    final baseDark = ThemeData.dark().textTheme;
    return MaterialApp(
      title: 'Theme UI',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        shadowColor: darkColorScheme.outline.withOpacity(0.1),
        scaffoldBackgroundColor: darkColorScheme.surface,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        textTheme: base
            .copyWith(
                displayMedium: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                titleLarge: const TextStyle(fontWeight: FontWeight.bold),
                headlineSmall: const TextStyle(fontWeight: FontWeight.w800),
                titleMedium: const TextStyle(fontWeight: FontWeight.bold))
            .apply(
              bodyColor: darkColorScheme.onSurface,
              displayColor: darkColorScheme.outline,
            ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: darkColorScheme.outline,
          ),
        ),
        colorScheme: darkColorScheme,
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkColorScheme.secondary,
            foregroundColor: darkColorScheme.onSecondary,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: darkColorScheme.surfaceVariant),
      ),
      theme: ThemeData(
        shadowColor: lightColorScheme.outline.withOpacity(0.1),
        scaffoldBackgroundColor: lightColorScheme.surface,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        textTheme: base
            .copyWith(
                displayMedium: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                titleLarge: const TextStyle(fontWeight: FontWeight.bold),
                headlineSmall: const TextStyle(fontWeight: FontWeight.w800),
                titleMedium: const TextStyle(fontWeight: FontWeight.bold))
            .apply(
                bodyColor: lightColorScheme.onSurface,
                displayColor: lightColorScheme.outline),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: lightColorScheme.outline,
          ),
        ),
        colorScheme: lightColorScheme,
        useMaterial3: true,
        primarySwatch: Colors.lightGreen,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: lightColorScheme.secondary,
            foregroundColor: lightColorScheme.onSecondary,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: lightColorScheme.surfaceVariant),
      ),
      home: const OnboardingPage(),
    );
  }
}
