import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App Onboarding',
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: <Widget>[
          createPage(
            title: "Welcome to [Bank Name]!",
            content: "Banking made easy.",
            image: 'assets/welcome.png',
          ),
          createPage(
            title: "Key Features",
            content: "Check balances, transfer money, pay bills anytime, anywhere.",
            image: 'assets/features.png',
          ),
          createPage(
            title: "Get Started",
            content: "Secure, reliable, and ready to go! Register or log in to continue.",
            image: 'assets/get_started.png',
          ),
        ],
      ),
      bottomSheet: _currentPage == 2 ? Container(
        height: 60,
        width: double.infinity,
        color: Colors.blue,
        child: TextButton(
          child: Text(
            'Get Started',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
          },
        ),
      ) : Container(
        alignment: Alignment.bottomRight,
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(
              onPressed: () {
                _pageController.jumpToPage(2);
              },
              child: Text('SKIP'),
            ),
            TextButton(
              onPressed: () {
                _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
              },
              child: Text('NEXT'),
            ),
          ],
        ),
      ),
    );
  }

  Widget createPage({required String title, required String content, required String image}) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image),
          SizedBox(height: 20),
          Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(content, textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Main Content of the App'),
      ),
    );
  }
}
