// lib/main.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // For enhanced typography
import 'package:offlinepay/screens/welcome_screen.dart'; // Correct package import: offlinepay
// Removed unused imports for seller_home_screen.dart and buyer_home_screen.dart,
// as they are not directly used in main.dart but are used via WelcomeScreen.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OfflinePay',
      theme: ThemeData(
        primarySwatch: Colors
            .blueGrey, // Keeping for backward compatibility for some widgets
        colorScheme: ColorScheme.fromSeed(
          seedColor:
              Colors.blueGrey, // Modern Material 3 approach for primary color
          brightness: Brightness.light,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.interTextTheme(
          // Use Google Fonts for a modern look
          Theme.of(context).textTheme,
        ),
        useMaterial3: true, // Enable Material 3 features
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey[800],
          foregroundColor: Colors.white,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
