import 'package:algoriza_task1_app/Services/TextBoxNormal.dart';
import 'package:algoriza_task1_app/Services/app_bar.dart';
import 'package:algoriza_task1_app/Services/cookies_class.dart';
import 'package:algoriza_task1_app/Services/custom_button.dart';
import 'package:algoriza_task1_app/Services/globals.dart';
import 'package:algoriza_task1_app/localizations.dart';
import 'package:algoriza_task1_app/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String? lang = "ar";

  TextEditingController phone = new TextEditingController();

  Future<String?> getLang() async {
    return await getValuesSF("lang");
  }

  @override
  void initState() {
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
      key: scaffoldKey,
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: bottom),
        child: Text(
          AppLocalizations().policy_msg,
          style: OwnColors.normalGray(lang),
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: space2),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                              "assets/pattern_bg.png",
                            ),
                            fit: BoxFit.fill,
                          ))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: side, left: side, bottom: bottom),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations().welcome_msg,
                            style: OwnColors.normalGray(lang),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: space2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppLocalizations().sign_in,
                                  style: OwnColors.titleBlackBig(lang),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        AppLocalizations().help,
                                        style: OwnColors.normalHyperLink(lang),
                                      ),
                                      SizedBox(
                                        width: space0,
                                      ),
                                      Image.asset(
                                        'assets/help_icon.png',
                                        width: 30,
                                        height: 30,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          CustomTextBoxNormal(
                            title: AppLocalizations.of(context)!.phone_hint,
                            keyboardPadding: true,
                            lang: lang,
                            index: 1,
                            hint: AppLocalizations.of(context)!.phone_hint,
                            tec: phone,
                            countryPicker: true,

                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: space1),
                            child: CustomButton(
                              lang: lang,
                              bgColor: OwnColors.color2[900],
                              text: AppLocalizations.of(context)!.sign_in,
                              textStyle: OwnColors.btnWhite(lang),
                              onClick: () {},
                              radius: 0,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: OwnColors.color2[100],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: space0),
                                child: Text(
                                  AppLocalizations().or,
                                  style: OwnColors.normalGray(lang),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: OwnColors.color2[100],
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: space1, bottom: space2),
                            child: CustomButton(
                              lang: lang,
                              bgColor: Colors.transparent,
                              text: AppLocalizations.of(context)!.google_sign,
                              textStyle: OwnColors.normalHyperLink(lang),
                              border: Border.all(color: OwnColors.color2[900]!,width: 1),
                              radius: 0,
                              imgPath: 'assets/google_icon.png',
                              onClick: () {

                              },
                            ),
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: AppLocalizations.of(context)!
                                            .register_msg2 +
                                        ' ',
                                    style: OwnColors.suitableGrayBold(lang),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => {}),
                                TextSpan(
                                    text: AppLocalizations.of(context)!
                                        .register_here,
                                    style: OwnColors.suitableHyperLink(lang!),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                            context, "/signup");
                                      }),
                              ]),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }

}
