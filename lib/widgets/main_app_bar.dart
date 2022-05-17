import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:foodie/theme/colors.dart';
import 'package:foodie/theme/fontsizes.dart';
import 'package:foodie/theme/helper.dart';
import 'package:foodie/theme/padding.dart';

class MainAppBar extends StatelessWidget {
  final Size size;
  const MainAppBar({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.8,
      backgroundColor: Colors.white,
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
                    children:  <Widget>[
                      const Text("Delivery Details", style: TextStyle(
                        color: textBlack,
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      const SizedBox(width: 10,),
                      getSvgIcon("arrow_right_icon.svg")
                    ],
                  ),
                  Row(
                    children: [
                      getSvgIcon("search_icon.svg"),
                      const SizedBox(width: 10,),
                      IconButton(onPressed: (){}, icon: Badge(
                        badgeContent: const Text(
                          '2',
                          style: TextStyle(color: textWhite),
                        ),
                        child: const Icon(EvilIcons.cart, size: 30,),
                      ))
                    ],
                  )
                ],
              ),
              SizedBox(width: (size.width - (leftMainPadding + rightMainPadding + 60)),
              child: const Text("66 Preah Monivong Blvd (93), Phnom Penh 66 Preah Monivong Blvd (93), Phnom Penh",
              overflow: TextOverflow.ellipsis, style: TextStyle(color: primary, fontSize: subTitleFontSize),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
