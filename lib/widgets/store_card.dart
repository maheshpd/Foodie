import 'package:flutter/material.dart';
import 'package:foodie/theme/colors.dart';
import 'package:foodie/theme/fontsizes.dart';
import 'package:foodie/theme/helper.dart';

class StoreCard extends StatelessWidget {
  final store;
  final double width;
  const StoreCard({Key? key,
     required this.store,
     this.width = 250
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: 100,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(getImageNetwork(store["image"]),
              fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  store["name"] ?? "",
                  overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: textBlack,
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 5,),
                Text(store["tags"] ?? "",
                overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: grey,
                    fontSize: subTitleFontSize,
                    fontWeight: FontWeight.w300
                  ),
                ),

               const SizedBox(
                  height: 5,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    getSvgIcon("clock_icon.svg"),
                   const SizedBox(width: 5,),
                    Text("Est: " + store["delivery_time"],style: const TextStyle(
                      color: primary,
                      fontSize: hintTextFontSize,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                )

              ],
            ),
          )
        ],
      ),

    );
  }
}
