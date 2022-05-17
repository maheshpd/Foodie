import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/theme/colors.dart';

class CustomeTextHolder extends StatelessWidget {

  final String label;
  final String value;
  final bool svgIcon;
  final String svgImage;
  final String type;
  
  const CustomeTextHolder({Key? key,
    required this.label,
    required this.value,
    required this.svgIcon,
    required this.svgImage,
    required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: primary, width: 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(label, style: const TextStyle(color: primary, fontSize: 11),),
                  const SizedBox(height: 5,),
                  Text(value, style: const TextStyle(color: textBlack, fontSize: 14),)
                ],
              ),
              (svgIcon) ? GestureDetector(
                onTap: (){},
                child: Container(
                  child: SvgPicture.asset(svgImage, color: primary,),
                ),
              ): Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomeTextHolderShort extends StatelessWidget {
  final String label;
  final String value;

  const CustomeTextHolderShort({Key? key,
    required this.label,
    required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 20.0),
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: primary, width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label, style: const TextStyle(color: primary, fontSize: 11),),
                const SizedBox(height: 5,),
                Text(value, style: const TextStyle(color: textBlack, fontSize: 14),)
              ],
            )
          ],
        ),
      ),

    ),);
  }
}
