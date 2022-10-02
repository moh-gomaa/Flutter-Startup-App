import 'package:startup_app/Services/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:startup_app/Services/cookies_class.dart';

class SplashScreen extends StatefulWidget {
  // final Data data;

  // SplashScreen(this.data);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? clientID = "";
  bool firstLoad = true;

  // final Data data;

  // _SplashScreenState(this.data);

  Future<String?> getClient() async {
    return await getValuesSF("clientID");
  }

  Future<String?> getFirstLoad() async {
    return await getValuesSF("firstLoad");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getClient().then((value) {
      clientID = value;
    });

    getFirstLoad().then((value) {
      if (value == '' || value == 'false') {
        firstLoad = true;
      } else {
        firstLoad = false;
      }

      new Future.delayed(const Duration(seconds: 3), () {
        if(firstLoad)
        {
          Navigator.of(context)
              .pushNamedAndRemoveUntil('/lang', (Route<dynamic> route) => false);

        }else
        {
          Navigator.of(context)
              .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);

        }

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
            Center(
              child: Logo(
                  width: MediaQuery.of(context).size.width / 2,
                  height:MediaQuery.of(context).size.width / 2
              ),
            )

          ],
        ));
  }
}
