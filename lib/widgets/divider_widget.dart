import 'package:flutter/material.dart';
import 'package:shopping/constant/dimens.dart';
class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: kFPS2x, // Customize the height of the divider
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFF79515),
            Color(0xFFFFC52A),
          ]),
        ),
        margin: const EdgeInsets.symmetric(horizontal: kFPS10x),
      ),
    );
  }
}