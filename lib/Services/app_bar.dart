import 'package:startup_app/Services/globals.dart';
import 'package:startup_app/localizations.dart';
import 'package:startup_app/theme.dart';
import 'package:flutter/material.dart';
import '../Screens/langugeMain.dart';

class CustomAppBarUpdated extends StatefulWidget {
  final String? title;
  final Widget? leadingWidget;
  final Widget? centerWidget;
  final Widget? actionWidget;
  final String? lang;
  final bool? hasTitle;
  final bool? hasLogo;
  final double? logo_width;
  final double? logo_height;
  final Color? logo_color;
  final EdgeInsets? custom_padding;

  CustomAppBarUpdated({
    this.title,
    this.leadingWidget,
    this.actionWidget,
    this.lang,
    this.centerWidget,
    this.hasTitle,
    this.hasLogo,
    this.logo_width,
    this.logo_height,
    this.logo_color,
    this.custom_padding,
  });

  @override
  _CustomAppBarUpdatedState createState() => _CustomAppBarUpdatedState();
}

class _CustomAppBarUpdatedState extends State<CustomAppBarUpdated> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: widget.custom_padding != null
            ? widget.custom_padding!
            : EdgeInsets.only(
                top: top + MediaQuery.of(context).padding.top,
                bottom: space1,
                right: side,
                left: side),
        child: Column(
          children: [
            Visibility(
              visible: widget.hasLogo != null && widget.hasLogo! ? true : false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo_colored.webp',
                    width: widget.logo_width != null
                        ? widget.logo_width
                        : MediaQuery.of(context).size.width / 6,
                    height: widget.logo_height != null
                        ? widget.logo_height
                        : MediaQuery.of(context).size.width / 6,
                    color: widget.logo_color != null ? widget.logo_color : null,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.leadingWidget != null
                    ? widget.leadingWidget!
                    : Container(),
                widget.title != null
                    ? Text(widget.title!)
                    : widget.centerWidget != null
                        ? widget.centerWidget!
                        : Container(),
                widget.actionWidget != null
                    ? widget.actionWidget!
                    : Container(),
              ],
            ),
          ],
        ),
      ),
      // ),
    );
  }
}

class BackIconAppBar extends StatelessWidget {
  final Color? color;
  final String? lang;

  const BackIconAppBar({Key? key, this.color, this.lang}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: space1,
          bottom: space1,
          left: lang == null
              ? 0
              : lang == 'ar'
                  ? 0.0
                  : space1,
          right: lang == null
              ? 0
              : lang == 'en'
                  ? space1
                  : 0,
        ),
        child: Image.asset(
          lang == 'en'
              ? 'assets/common/back_en.webp'
              : 'assets/common/back_ar.webp',
          width: arrow_width,
          height: arrow_height,
          color: color != null ? color : null,
        ),
      ),
    );
  }
}

class CloseIconAppBar extends StatelessWidget {
  final Color? color;
  final String? lang;

  const CloseIconAppBar({Key? key, this.color, this.lang}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.pushNamed(context, '/welcome');
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: space1,
          bottom: space1,
          left: lang == null
              ? 0
              : lang == 'en'
                  ? 0.0
                  : space1,
          right: lang == null
              ? 0
              : lang == 'en'
                  ? space1
                  : 0,
        ),
        child: Image.asset(
          'assets/common/close_icon.webp',
          width: 15,
          height: 15,
          color: color != null ? color : null,
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;

  const Logo({Key? key, this.width, this.height, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo.png',
      width: width != null ? width : MediaQuery.of(context).size.width / 5,
      height: height != null ? height : MediaQuery.of(context).size.width / 5,
      color: color != null ? color : null,
    );
  }
}

class LanWidgetAppbar extends StatelessWidget {
  final String? screen;
  final String? lang;

  const LanWidgetAppbar({Key? key, this.screen, this.lang}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => LangugeMain(
                      screen: screen,
                    )));
      },
      child: Text(
        AppLocalizations.of(context)!.lang,
        style: OwnColors.suitableBlackBold(lang),
      ),
    );
  }
}
