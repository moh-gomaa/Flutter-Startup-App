import 'package:algoriza_task1_app/Services/globals.dart';
import 'package:algoriza_task1_app/theme.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatefulWidget {
  final Function? onClick;
  final String? text;
  final String? lang;
  final bool? isLoading;
  final bool canSave;
  final Color? bgColor;
  final TextStyle? textStyle;
  final Border? border;
  final String? imgPath;
  final double radius;

  CustomButton({
    this.onClick,
    this.text,
    this.lang,
    this.isLoading = false,
    this.canSave = true,
    this.bgColor = const Color(0xFF51b0aa),
    this.textStyle,
    this.border,
    this.imgPath,
    this.radius = round
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.isLoading != true) {
      return IgnorePointer(
        ignoring: widget.canSave ? false : true,
        child: GestureDetector(
          onTap: () {
            widget.onClick!();
          },
          child: Container(
            decoration: BoxDecoration(
                color: widget.canSave ? widget.bgColor : OwnColors.color2[100],
                borderRadius: BorderRadius.circular(widget.radius),
                border: widget.border),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: space2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.imgPath != null
                      ? Image.asset(widget.imgPath!,
                  width: 20,
                    height: 20,
                  )
                      : Container(),
                  SizedBox(
                    width: space1,
                  ),
                  Text(
                    widget.text ?? '',
                    style: widget.textStyle != null
                        ? widget.textStyle
                        : OwnColors.suitableWhiteBold(widget.lang),
                    maxLines: 1,
                  )
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Center(child: Text(''));
    }
  }
}

// class CustomOutlinedButton extends StatefulWidget {
//   final Function? onClick;
//   final String? title;
//   final String lang;
//
//   final bool? isLoading;
//   final bool? canSave;
//
//   const CustomOutlinedButton(
//       {Key? key,
//       this.onClick,
//       this.title,
//       required this.lang,
//       this.isLoading,
//       this.canSave})
//       : super(key: key);
//
//   @override
//   _CustomOutlinedButtontate createState() => _CustomOutlinedButtontate();
// }
//
// class _CustomOutlinedButtontate extends State<CustomOutlinedButton> {
//   @override
//   Widget build(BuildContext context) {
//     if (widget.isLoading != true) {
//       return IgnorePointer(
//         ignoring: widget.canSave != null
//             ? widget.canSave!
//                 ? false
//                 : true
//             : false,
//         child: GestureDetector(
//           onTap: () {
//             widget.onClick!();
//           },
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: space2),
//             child: Container(
//               height: height2,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(round),
//                   border: Border.all(
//                       color: widget.canSave != null
//                           ? widget.canSave!
//                               ? OwnColors.color1[500]!
//                               : OwnColors.color1[600]!
//                           : OwnColors.color1[500]!,
//                       width: 1)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     CustomString().getString(widget.title),
//                     style: widget.canSave != null
//                         ? widget.canSave!
//                             ? OwnColors.normalColorBold(widget.lang)!
//                             : OwnColors.normalGreyBold(widget.lang)!
//                         : OwnColors.normalColorBold(widget.lang)!,
//                     maxLines: 1,
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     } else {
//       return Center(child: DataLoadingUtil().loadingDataBtn());
//     }
//   }
// }
