import 'package:flutter/material.dart';
import '../widgets/podcast_card.dart';
import 'package:tamenny/features/recommendations/data/models/podcast_model.dart';
import 'package:tamenny/widgets/custom_bottom_nav.dart';
import 'package:tamenny/features/recommendations/presentation/screens/mbti_test_screen.dart';

class RecommendationsScreen extends StatefulWidget {
  const RecommendationsScreen({super.key});

  @override
  State<RecommendationsScreen> createState() => _RecommendationsScreenState();
}

class _RecommendationsScreenState extends State<RecommendationsScreen> {
  int selectedIndex = 0;
  int bottomIndex = 0;

  final categories = ["Podcasts", "MBTI Test", "Exercises"];

  void _onNavTap(int index) {
    setState(() {
      bottomIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/tracker');
        break;
      case 2:
        Navigator.pushNamed(context, '/chat');
        break;
      case 3:
        Navigator.pushNamed(context, '/booking');
        break;
      case 4:
        Navigator.pushNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3e9e3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Recommendations",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff203647),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: bottomIndex,
        onTap: _onNavTap,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // CATEGORIES
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });

                      if (categories[index] == "MBTI Test") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MbtiLandingPage(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected ? const Color(0xff1B4965) : Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // PODCAST LIST
            Expanded(
              child: ListView.builder(
                itemCount: podcastsList.length,
                itemBuilder: (context, index) {
                  final podcast = podcastsList[index];

                  return PodcastCard(
                    podcast: podcast,
                    onFavorite: () {
                      print("Add to favourite");
                    },
                    onTap: () {
                      // Podcast Details
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
