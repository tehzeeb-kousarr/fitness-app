import 'package:flutter/material.dart';
import 'package:fitness_app/register.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  final List<Map<String, String>> pages = [
    {
      "image": "asset/img/01.jpg",
      "title": "Track Your Goal",
      "description": "Don't worry if you have trouble to determine your goals, We can help you determine your goals and track your goals."
    },
    {
      "image": "asset/img/02.jpg",
      "title": "Get Burn",
      "description": "Let's keep burning, to achieve your goals, it hurts temporarily, if you give up now, you will be in pain forever."
    },
    {
      "image": "asset/img/03.jpg",
      "title": "Eat Well",
      "description": "Let's start a healthy lifestyle with us. We can determine your diet every day. Healthy eating is fun."
    },
    {
      "image": "asset/img/04.jpg",
      "title": "Improve Sleep Quality",
      "description": "Improve your quality of sleep with us. Good quality sleep can bring a good mood in the morning."
    }
  ];

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return _buildBoardingScreen(
                  pages[index]["image"]!,
                  pages[index]["title"]!,
                  pages[index]["description"]!
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 20.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Color.fromRGBO(142, 164, 241, 1.0),
                onPressed: () {
                  if (_pageController.page!.toInt() < pages.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  }
                },
                child: Icon(Icons.navigate_next, color: Colors.white, size: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBoardingScreen(String imagePath, String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        SizedBox(height: 30),
        Text(title, style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text(description, textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14)),
        ),
      ],
    );
  }
}