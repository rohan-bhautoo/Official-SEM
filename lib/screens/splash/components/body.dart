import 'dart:async';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  bool _formLoading = false;
  List<Map<String, String>> splashData = [
    {
      "title": "Official SEM™",
      "text": "",
      "image": "assets/images/splash_screen_1.png",
      "height": "380",
      "width": "380",
    },
    {
      "title": "",
      "text": "",
      "image": "assets/images/splash_screen_2.png",
      "height": "350",
      "width": "400",
    },
    {
      "title": "",
      "text": "",
      "image": "assets/images/splash_screen_3.png",
      "height": "350",
      "width": "400",
    },
    {
      "title": "",
      "text": "",
      "image": "assets/images/splash_screen_4.png",
      "height": "400",
      "width": "400",
    },
    {
      "title": "",
      "text": "",
      "image": "assets/images/splash_screen_5.png",
      "height": "400",
      "width": "400",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  title: splashData[index]['title'],
                  text: splashData[index]['text'],
                  image: splashData[index]["image"],
                  height: splashData[index]["height"],
                  width: splashData[index]["width"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    DefaultButton(
                      text: "Get Started",
                      onPressed: () {
                        setState(() {
                          _formLoading = true;
                        });
                        startTime();
                      },
                      isLoading: _formLoading,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  startTime() async {
    Duration duration = const Duration(seconds: 1);
    return Timer(duration, route);
  }

  route() {
    //Navigator.pushNamed(context, LogInScreen.routeName);
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFf1a98b),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
