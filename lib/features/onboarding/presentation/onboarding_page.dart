import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/background/starry_background.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StarryBackground(),
          PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                createPage(
                  title: "Welcome to eWealth",
                  content:
                      "Discover modern banking with eWealth. Simplify your financial transactions and manage your money smarter and faster than ever before.\n Let's get you started on a journey of hassle-free banking!",
                  image: 'lib/assests/new_logo.png',
                ),
                createPage(
                  title: "Key Features",
                  content:
                      "With eWealth, you can check your balances in real-time, transfer money instantly. \n\n Our secure and easy-to-navigate app ensures that your financial needs are met, anywhere and anytime.",
                ),
                createPage(
                  title: "Get Started",
                  content: "Secure, reliable, and ready to go!",
                  image: 'lib/assests/new_logo.png',
                ),
              ]),
        ],
      ),
      bottomSheet: _currentPage == 2
          ? Container(
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: 60,
              width: double.infinity,
              child: TextButton(
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  ///todo Tumi we need to push and replace over here not push
                  context.router.push(const MainHomeRoute());
                },
              ),
            )
          : Container(
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              alignment: Alignment.bottomRight,
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      _pageController.jumpToPage(2);
                    },
                    child: const Text(
                      'SKIP',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    child: const Text('NEXT',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
    );
  }

  Widget createPage(
      {required String title, required String content, String? image}) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(title,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          if (image != null)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Image.asset(
                  alignment: Alignment.center,
                  image,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          const SizedBox(height: 10),
          Text(content,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
