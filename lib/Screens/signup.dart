
import 'package:algoriza_task1_app/Services/TextBoxNormal.dart';
import 'package:algoriza_task1_app/Services/app_bar.dart';
import 'package:algoriza_task1_app/Services/cookies_class.dart';
import 'package:algoriza_task1_app/Services/globals.dart';
import 'package:algoriza_task1_app/localizations.dart';
import 'package:algoriza_task1_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Services/custom_button.dart';


bool isVerified = false;

class SignUp extends StatefulWidget {
  final Stream<int>? stream;

  const SignUp({Key? key, this.stream}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String? lang;

  bool canSave = false;



  Future<String?> getLang() async {
    return await getValuesSF("lang");
  }

  TextEditingController phone = new TextEditingController();
  TextEditingController mail = new TextEditingController();
  TextEditingController password = new TextEditingController();



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
      bottomSheet:
        Container(
          color: OwnColors.color2[50],

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: bottom, right: side, left: side, top: space1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations().accept_condition_msg,
                        style: OwnColors.normalGray(lang),
                      ),
                      Text(
                        AppLocalizations().terms_condition,
                        style: OwnColors.normalHyperLinkBold(lang),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/pattern_bg.png",
                                ),
                                fit: BoxFit.cover,

                              ))
                      ,child: CustomAppBarUpdated(leadingWidget: BackIconAppBar(),
                      ),
                      ),
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
                                  AppLocalizations().register,
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

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: space1),
                            child: CustomTextBoxNormal(
                              title: AppLocalizations.of(context)!.mail_hint,
                              keyboardPadding: true,
                              lang: lang,
                              index: 2,
                              hint: AppLocalizations.of(context)!.mail_hint,
                              tec: mail,
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
                            child: CustomTextBoxNormal(
                              title: AppLocalizations.of(context)!.password_hint,
                              keyboardPadding: true,
                              lang: lang,
                              index: 3,
                              hint: AppLocalizations.of(context)!.password_hint,
                              tec: password,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: space1),
                            child: CustomButton(
                              lang: lang,
                              bgColor: OwnColors.color2[900],
                              text: AppLocalizations.of(context)!.register,
                              textStyle: OwnColors.btnWhite(lang),
                              onClick: () {},
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
                                        .sign_in_msg +
                                        ' ',
                                    style: OwnColors.suitableGrayBold(lang),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => {}),
                                TextSpan(
                                    text: AppLocalizations.of(context)!
                                        .sign_in_here,
                                    style: OwnColors.suitableHyperLink(lang!),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                            context, "/login");
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
