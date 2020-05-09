import 'package:flutter/material.dart';
import 'package:onboarding_ui/onboarding_screen.dart';

class OnBoardingUI extends StatefulWidget {
  @override
  _OnBoardingUIState createState() => _OnBoardingUIState();
}

class _OnBoardingUIState extends State<OnBoardingUI> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: ClampingScrollPhysics(),
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  OnBoardScreen(),
                  OnBoardScreen1(),
                  OnBoardScreen2(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          _pageController.animateToPage(2,
                              duration: Duration(
                                milliseconds: 500,
                              ),
                              curve: Curves.easeInToLinear);
                        },
                        child: Text("Skip",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 16))),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildIndicator()),
                    FlatButton(
                        onPressed: () {
                          _pageController.nextPage(
                            duration: Duration(
                              milliseconds: 500,
                            ),
                            curve: Curves.easeInToLinear,
                          );
                        },
                        child: Text("Next",
                            style: TextStyle(color: Colors.red, fontSize: 16)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
