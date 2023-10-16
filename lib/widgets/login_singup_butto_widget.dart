import 'package:flutter/material.dart';
import '../constant/dimens.dart';
import 'easy_text_widget.dart';

class LoginAndSingUpButtonWidget extends StatelessWidget {
  const LoginAndSingUpButtonWidget({
    super.key, required this.width, required this.text, required this.onTap,
  });
  final double width;
  final String text;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(kFPS9x),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kFPS15x),
            gradient:  const LinearGradient(colors: [
              Color(0xFFFFC52A),
              Color(0xFFF69515),
            ])
        ),
        width: width,
        child:  EasyTextWidget(color: Colors.white, text: text, fontSize: kFPS20x,  fontWeight: FontWeight.w700),
      ),
    );
  }
}