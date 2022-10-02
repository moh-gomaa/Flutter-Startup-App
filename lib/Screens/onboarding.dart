import 'package:startup_app/Services/cookies_class.dart';
import 'package:startup_app/Services/custom_button.dart';
import 'package:startup_app/Services/globals.dart';
import 'package:startup_app/localizations.dart';
import 'package:startup_app/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoarding createState() => _OnBoarding();
}

class _OnBoarding extends State<OnBoarding> {
  String? lang = "ar";
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? indicator(true, i) : indicator(false, i));
    }
    return list;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // firstLoading();
    getLang().then((value) {
      setState(() {
        lang = value;
      });
    });
  }

  Future<String?> getLang() async {
    return await getValuesSF("lang");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: side),
            child: Row(
              mainAxisAlignment: lang == 'en'? MainAxisAlignment.end: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    if (_currentPage == _numPages - 1) {
                      Navigator.pushNamed(context, "/getStart");
                    } else {
                      var index = _numPages - 1;
                      setState(() {
                        _pageController.animateToPage(
                          index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      });
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: OwnColors.color2[600]!.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(round)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: space0, horizontal: space1),
                      child: Text(
                        AppLocalizations.of(context)!.skip_label,
                        style: OwnColors.suitableBlackBold(lang),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: OwnColors.color2[50],
        child: Padding(
          padding: const EdgeInsets.only(
              bottom: bottom, right: side, left: side, top: space2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: space1),
                child: CustomButton(
                  onClick: () {
                    Navigator.pushNamed(context, "/getStart");
                  },
                  text: AppLocalizations.of(context)!.getStart_btn,
                  textStyle: OwnColors.suitableWhite(lang),
                ),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: AppLocalizations.of(context)!.register_msg + ' ',
                      style: OwnColors.suitableBlackBold(lang),
                      recognizer: TapGestureRecognizer()..onTap = () => {}),
                  TextSpan(
                      text: AppLocalizations.of(context)!.signup_btn,
                      style: OwnColors.suitableColor(lang!),
                      recognizer: TapGestureRecognizer()..onTap = () => {}),
                ]),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: top, bottom: bottom, right: side, left: side),
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              getField(
                  AppLocalizations.of(context)!.slide1_title,
                  AppLocalizations.of(context)!.slide1_desc,
                  'assets/onboarding/slide1.png'),
              getField(
                  AppLocalizations.of(context)!.slide2_title,
                  AppLocalizations.of(context)!.slide2_desc,
                  'assets/onboarding/slide2.png'),
              getField(
                  AppLocalizations.of(context)!.slide1_title,
                  AppLocalizations.of(context)!.slide1_desc,
                  'assets/onboarding/slide1.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget getField(title, desc, imageSrc) {
    return Column(children: [
      SizedBox(height: space1),
      Image.asset(
        'assets/logo_text.webp',
        width: 120,
        height: 30,
        fit: BoxFit.fill,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: space1),
        child: Image.asset(
          imageSrc,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width * 0.8,
        ),
      ),
      Text(
        title,
        style: OwnColors.titleBlackBig(lang),
        textAlign: TextAlign.center,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: space1),
        child: Text(
          desc,
          style: OwnColors.paragraphSmallBlack(lang!),
          textAlign: TextAlign.center,
        ),
      )
    ]);
  }

  Widget indicator(bool isActive, int index) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        });
      },
      child: AnimatedContainer(
        duration: Duration(microseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        height: 7,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(round),
          color: isActive ? OwnColors.color2[600] : OwnColors.color2[100],
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------
