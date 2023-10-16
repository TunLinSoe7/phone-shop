import 'package:flutter/material.dart';
import '../constant/assest_images.dart';
import '../constant/dimens.dart';

class FaceBookAndGoogleImageWidget extends StatelessWidget {
  const FaceBookAndGoogleImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(kFaceBookLogo,width: kFPS40x,height: kFPS40x,),
        const SizedBox(width: kFPS20x,),
        Image.asset(kGoogleLogo,width: kFPS50x,height: kFPS50x,),
      ],);
  }
}