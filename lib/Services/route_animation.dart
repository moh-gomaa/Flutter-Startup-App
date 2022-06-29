import 'package:flutter/material.dart';

Duration routeDuration = Duration(milliseconds: 250);

class CustomPageRouteLeft extends PageRouteBuilder {
  final Widget? routePage;
  final AxisDirection? direction;

  CustomPageRouteLeft({this.routePage, this.direction})
      : super(
          pageBuilder: (BuildContext context, animation, secoundaryAnimation) {
            return routePage!;
          },
          transitionDuration: routeDuration,
          reverseTransitionDuration: routeDuration,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secoundaryAnimation,
              Widget routePage) {
            return SlideTransition(
              position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
                  .animate(animation),
              child: routePage,
            );
          },
        );

  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return Offset(0, 1);
      case AxisDirection.down:
        return Offset(0, -1);
      case AxisDirection.right:
        return Offset(-1, 0);
      case AxisDirection.left:
        print('amhere');
        return Offset(1, 0);
      default:
        return Offset(1, 0);
    }
  }
}


class CustomPageRouteRight extends PageRouteBuilder {
  final Widget? routePage;
  final AxisDirection? direction;

  CustomPageRouteRight({this.routePage, this.direction})
      : super(
    pageBuilder: (BuildContext context, animation, secoundaryAnimation) {
      return routePage!;
    },
    transitionDuration: routeDuration,
    reverseTransitionDuration: routeDuration,
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secoundaryAnimation,
        Widget routePage) {
      print('inside');
      return SlideTransition(
        position: Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
            .animate(animation),
        child: routePage,
      );
    },
  );

  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return Offset(0, 1);
      case AxisDirection.down:
        return Offset(0, -1);
      case AxisDirection.right:
        return Offset(-1, 0);
      case AxisDirection.left:
        print('amhere');
        return Offset(1, 0);
      default:
        return Offset(1, 0);

    }
  }
}

