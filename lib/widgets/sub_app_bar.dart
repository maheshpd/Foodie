import 'package:flutter/material.dart';
import 'package:foodie/theme/colors.dart';
import 'package:foodie/theme/fontsizes.dart';
import 'package:foodie/theme/padding.dart';

class SubAppBar extends StatelessWidget {
  final Size size;
  const SubAppBar({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.8,
      brightness: Brightness.light,
      backgroundColor: textWhite,
      automaticallyImplyLeading: false,
      primary: false,
      excludeHeaderSemantics: true,
      flexibleSpace: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: leftMainPadding, right: rightMainPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const <Widget>[
                      Text("Notification",style: TextStyle(
                        color: textBlack,
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Text("Clear", style: TextStyle(
                        color: textBlack,
                        fontSize: subTitleFontSize,
                        fontWeight: FontWeight.w300
                      ),)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
