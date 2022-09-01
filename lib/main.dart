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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          shadowColor: lightColorScheme.outline.withOpacity(0.1),
          scaffoldBackgroundColor: lightColorScheme.surface,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          textTheme: base
              .copyWith(
                displayMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                titleLarge: TextStyle(fontWeight: FontWeight.bold),
                headlineSmall: TextStyle(fontWeight: FontWeight.w800),
                titleMedium: TextStyle(fontWeight: FontWeight.bold)
              )
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              textStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
      home: OnboardingPage(),
    );
  }
}
