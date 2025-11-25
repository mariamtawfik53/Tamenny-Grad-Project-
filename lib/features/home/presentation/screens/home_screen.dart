import 'package:flutter/material.dart';
import 'package:tamenny/features/home/presentation/widgets/category_card.dart';
import '../widgets/recommended_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f1f1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Center(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  // backgroundImage: AssetImage('assets/user.png'), // لو عندك صورة
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Tammeny',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1D3B58)),
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Text(
                  'Good morning, user name\nWe wish you have a good day.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: CategoryCard(
                      title: 'Chat with AI',
                      image: 'assets/chat_ai.png',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CategoryCard(
                      title: 'Book with a specialist',
                      image: 'assets/book_specialist.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Expanded(
                    child: CategoryCard(
                      title: 'Mood Tracker',
                      image: 'assets/mood_tracker.png',
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Recommended for you',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1D3B58)),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RecommendedItem(
                        title: 'Books', image: 'assets/recommended_books.png'),
                    RecommendedItem(
                        title: 'Podcasts',
                        image: 'assets/recommended_podcasts.png'),
                    RecommendedItem(
                        title: 'Exercises',
                        image: 'assets/recommended_exercises.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
