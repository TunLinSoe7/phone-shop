// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:shopping/constant/assest_images.dart';
// import 'package:shopping/constant/colors.dart';
// import 'package:shopping/constant/dimens.dart';
// import 'package:shopping/constant/strings.dart';
// import 'package:shopping/widgets/input_text_field_wiget.dart';
// import '../view_items/login_page_view_items.dart';
// import '../widgets/easy_text_widget.dart';
// import '../widgets/facebook_google_image_widget.dart';
// import '../widgets/login_singup_butto_widget.dart';
//
// class SingUpPage extends StatefulWidget {
//   const SingUpPage({super.key});
//
//   @override
//   State<SingUpPage> createState() => _SingUpPageState();
// }
//
// class _SingUpPageState extends State<SingUpPage> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size.width;
//     return  Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(kFaceBookLogo,width: 100,height: 100,fit: BoxFit.fill,),
//               const EasyTextWidget(color: Colors.black,text: kRegisterText, fontSize: kFPS22x,fontWeight:FontWeight.w700 ,),
//               const EasyTextWidget(color: Colors.black38,text: kCreateAccountText, fontSize: kFPS13x,fontWeight:FontWeight.w400 ,),
//               const SizedBox(height: kFPS15x,),
//               const InputTextFieldWidget(hintText: kNameText,),
//               const SizedBox(height: kFPS15x,),
//               const InputTextFieldWidget(hintText: kEmailText,),
//               const SizedBox(height: kFPS15x,),
//               const InputTextFieldWidget(hintText: kPhoneText,),
//               const SizedBox(height: kFPS15x,),
//               const InputTextFieldWidget(hintText: kPasswordText,showIcon: true,),
//               Padding(
//                 padding: const EdgeInsets.only(top: kFPS15x,bottom: kFPS15x),
//                 child: SizedBox(
//                   width: size*0.85,
//                   child: RichText(text: TextSpan(
//                     text: kAgreeText,
//                     style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 12),
//                     children: [
//                       TextSpan(text: kTermsAndConditionText,style:GoogleFonts.poppins(color: kYellowColor,fontWeight: FontWeight.w400,
//                         decoration: TextDecoration.underline
//                       ),),
//                       TextSpan(text: kAndText,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w400)),
//                       TextSpan(text: kPrivacyPolicyText,style: GoogleFonts.poppins(color: kYellowColor,fontWeight: FontWeight.w400,
//                           decoration: TextDecoration.underline
//                       )),
//                     ]
//                   ),textAlign: TextAlign.center,),
//                 ),
//               ),
//               LoginAndSingUpButtonWidget(width:size*0.85 ,text: kSingUpText, onTap: () {  },),
//               ORTextItemView(size: size),
//               const SizedBox(height: kFPS10x,),
//               const FaceBookAndGoogleImageWidget(),
//               const SizedBox(height: kFPS15x,),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   EasyTextWidget(color: Colors.black, text: kHaveAccount, fontSize: kFPS14x, fontWeight: FontWeight.w400),
//                   EasyTextWidget(color: kYellowColor, text: kLogInText, fontSize: kFPS16x, fontWeight: FontWeight.w400),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
