
import 'package:algoriza_task1_app/Screens/Intro.dart';
import 'package:algoriza_task1_app/Services/app_bar.dart';
import 'package:algoriza_task1_app/Services/cookies_class.dart';
import 'package:algoriza_task1_app/Services/globals.dart';
import 'package:algoriza_task1_app/localizations.dart';
import 'package:algoriza_task1_app/theme.dart';
import 'package:flutter/material.dart';

class LangugeMain extends StatefulWidget {
  final String? screen;

  const LangugeMain({Key? key, this.screen}) : super(key: key);
  @override
  _LangugeMainState createState() => _LangugeMainState();
}

class _LangugeMainState extends State<LangugeMain> {
  String? lang;

  Future<String?> getLang() async {
    return await getValuesSF("lang");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLang().then((value) {
      setState(() {
        lang = value;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/gradient_bg.webp',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.15),

                      child:
                      Logo(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.width * 0.5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // color: Colors.red,
              margin: EdgeInsets.only(bottom: bottom),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  //----------------------------------------
                  Text(AppLocalizations.of(context)!.LangMain1,
                      style: OwnColors.bigBlackLight("ar")),

                  Padding(
                    padding: const EdgeInsets.only(top: space1, bottom: space3),
                    child: Text(AppLocalizations.of(context)!.LangMain2,
                        style: OwnColors.bigBlackLight("en")),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.deferToChild,
                    onTap: () {
                      addStringToSF("lang", "ar");
                      Intro.setLocale(context, "ar");
                      addStringToSF("lang", "ar");

                      if(widget.screen != null){
                        Navigator.pushReplacementNamed(context, '/${widget.screen}');

                      }else{
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/onBoarding', (Route<dynamic> route) => false);
                      }
                    },

                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: buttonSafeArea,
                          left: buttonSafeArea,
                         bottom: space1 ),
                      child: Container(
                        height: height1,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(round),
                            color: OwnColors.color2[500]),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              AppLocalizations.of(context)!.LangMain3,
                              style: OwnColors.bigWhite("ar"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    behavior: HitTestBehavior.deferToChild,
                    onTap: () {
                      addStringToSF("lang", "en");
                      Intro.setLocale(context, "en");
                      addStringToSF("lang", "en");
                      if(widget.screen != null){

                      Navigator.pushReplacementNamed(context, '/${widget.screen}');

                      }else{
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/onBoarding', (Route<dynamic> route) => false);
                      }

                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          right: buttonSafeArea,
                          left: buttonSafeArea,
                          ),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(round),
                          color: OwnColors.color2[600]),
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.LangMain4,
                          style: OwnColors.bigWhite("en"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //------
            ),
          ),


        ],
      ),
    );
  }
}
