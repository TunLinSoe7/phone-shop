import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/constant/colors.dart';
import 'package:shopping/constant/dimens.dart';

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget({
    super.key, required this.hintText, this.showText=false, this.suffixIcon,this.showIcon = false, this.onPressed, this.obscureText, required this.controller, required this.globalKey, required this.validator
  });
  final String hintText;
  final bool showText;
  final bool showIcon;
  final Widget? suffixIcon;
  final VoidCallback? onPressed;
  final bool? obscureText;
  final TextEditingController controller;
  final GlobalKey globalKey;
  final FormFieldValidator<String> validator;
  @override
  Widget build(BuildContext context) {
    return Form(
      key:globalKey ,
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.85,
        height: kFPS50x,
        child: TextFormField(
          controller: controller,
          obscureText: obscureText ?? false,
          cursorColor: kYellowColor,
          style: GoogleFonts.poppins(color: Colors.black),
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: IconButton(onPressed: onPressed,icon: showIcon==true? Icon(showText?Icons.visibility_off:Icons.visibility):const SizedBox()),
            border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(kFPS7x),
                borderSide: const BorderSide(color: Colors.black38)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(kFPS7x),
                borderSide: const BorderSide(color: Colors.black38)
            ),
          ),
          validator: validator,
        ),
      ),
    );
  }
}