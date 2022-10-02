import 'package:startup_app/Services/app_bar.dart';
import 'package:startup_app/Services/cookies_class.dart';
import 'package:startup_app/Services/custom_button.dart';
import 'package:startup_app/Services/globals.dart';
import 'package:startup_app/localizations.dart';
import 'package:startup_app/theme.dart';
import 'package:flutter/material.dart';

class GetStart extends StatefulWidget {
  @override
  _GetStart createState() => _GetStart();
}
//---------------------------------------------------------

class _GetStart extends State<GetStart> {
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
      body: Stack(children: [

        Padding(
          padding:  EdgeInsets.only(right: side, left: side, top: top + MediaQuery.of(context).padding.top + MediaQuery.of(context).size.height * 0.15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(

                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
              ),
            ],
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                //----------------------------------------
                Text(AppLocalizations.of(context)!.getStart1,
                    style: OwnColors.hugeColorBold(lang)),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: AppLocalizations.of(context)!.getStart2 + ' ',
                        style: OwnColors.hugeColor2Bold(lang)),
                    TextSpan(
                        text: AppLocalizations.of(context)!.getStart3,
                        style: OwnColors.hugeColorBold(lang)),
                  ]),
                ),
                SizedBox(
                  height: space2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: buttonSafeArea),
                  child: CustomButton(
                    lang: lang,
                    text: AppLocalizations.of(context)!.getStart_btn,
                    textStyle: OwnColors.btnWhite(lang),
                    // color: OwnColors.color2[600],
                    onClick: () {
                      submit();
                    },
                  ),
                )
              ],
            ),
            //------------------------------------------------------------------
          ),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppBarUpdated(
              lang: lang,
              leadingWidget: BackIconAppBar(lang: lang,
              color: OwnColors.color2[50],
              ),
            ),
          ],
        ),

        //-------------------------------------------------------------------------
      ]),
    );
  }

  void submit() async {
    addStringToSF("firstLoad", "true");

    Navigator.of(context)
        .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
  }
}
