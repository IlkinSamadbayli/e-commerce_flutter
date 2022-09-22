import 'package:e_commerce_flutter/pages/enterance.dart';
import 'package:e_commerce_flutter/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late final PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          currentIndex = index;
          setState(() {});
        },
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                  'https://thelittlebotanical.com/wp-content/uploads/2019/07/26_JT_014_1000px.jpg'),
              const Text(
                'We provide high quality plants just for you',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Image.network(
                  'https://i.etsystatic.com/11789487/r/il/9c5aab/1724920997/il_fullxfull.1724920997_ii47.jpg'),
              const Text(
                "Your satisfaction is our number one priority",
                style: TextStyle(fontSize: 41),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  'https://live.staticflickr.com/7881/32661392157_634f6ffec1_b.jpg'),
              const Text(
                "Let's Shop Your Fovarite Plants With Patea Now",
                
                style: TextStyle(fontSize: 41),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 130,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: SlideEffect(activeDotColor: AppColor.mainColor),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppColor.mainColor,
            ),
            child: TextButton(
                child: currentIndex == 2
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const EnterancePage(),
                            ),
                          );
                        },
                        child: Text(
                          'Get stated',
                          style: TextStyle(color: AppColor.versionColorWhite),
                        ),
                      )
                    : Text(
                        'Next',
                        style: TextStyle(color: AppColor.versionColorWhite),
                      ),
                onPressed: () {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                }),
          ),
        ]),
      ),
    );
  }
}
