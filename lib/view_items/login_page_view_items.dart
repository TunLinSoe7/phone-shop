import 'package:flutter/material.dart';
import 'package:shopping/constant/colors.dart';
import 'package:shopping/constant/dimens.dart';
import 'package:shopping/constant/strings.dart';

import '../widgets/divider_widget.dart';
import '../widgets/easy_text_widget.dart';
class CheckBoxAndForgotPasswordWidget extends StatelessWidget{
  const CheckBoxAndForgotPasswordWidget({super.key, required this.isChecked, this.onChanged});
  final bool isChecked;
  final  ValueChanged? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.92,
      child: Row(
        children: [
          Checkbox(
              checkColor: Colors.white,
              activeColor: kYellowColor,
              value: isChecked, onChanged: onChanged),
          const EasyTextWidget(color: kYellowColor, text: "Remember me", fontSize: kFPS13x, fontWeight: FontWeight.w500),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: kFPS15x),
            child: EasyTextWidget(color: kYellowColor,text: kForGotPasswordText, fontSize: kFPS13x, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class ORTextItemView extends StatelessWidget {
  const ORTextItemView({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kFPS15x,bottom: kFPS10x),
      child: SizedBox(
        width: size*0.85,
        child: const Row(
          children: [
            DividerWidget(),
            EasyTextWidget(color: Colors.black, text: kORText, fontSize: kFPS20x,  fontWeight: FontWeight.w500),
            DividerWidget(),
          ],
        ),
      ),
    );
  }
}