import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDD1C9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // ← يوزع المحتوى بالكامل
            children: [
              Column(
                children: const [
                  Text(
                    "Welcome to Tammeny",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F3B53),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "your journey to inner peace begins here",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Color(0xFF1F3B53)),
                  ),
                ],
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/onboarding_page1.png",
                  fit: BoxFit.contain,
                ),
              ),
              // مثال لو في Buttons تحت
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1F3B53),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
