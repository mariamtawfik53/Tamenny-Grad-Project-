import 'package:flutter/material.dart';
import 'package:tamenny/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:tamenny/features/recommendations/presentation/screens/books_recommendations_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(child: Text("Home Screen")),
  );
}

class TrackerScreen extends StatelessWidget {
  const TrackerScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(child: Text("Tracker Screen")),
  );
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(child: Text("Chat Screen")),
  );
}

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(child: Text("Booking Screen")),
  );
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(child: Text("Profile Screen")),
  );
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        routes: {
          '/home': (_) => const HomeScreen(),
          '/tracker': (_) => const TrackerScreen(),
          '/chat': (_) => const ChatScreen(),
          '/booking': (_) => const BookingScreen(),
          '/profile': (_) => const ProfileScreen(),
          '/recommendations': (_) => const RecommendationsScreen(),
          '/onboarding': (_) => const OnboardingScreen(),
        },


        home: const OnboardingScreen(),
        );
    }
}
