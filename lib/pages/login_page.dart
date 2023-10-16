import 'package:flutter/material.dart';
import 'package:shopping/bloc/login_page_bloc.dart';
import 'package:shopping/constant/assest_images.dart';
import 'package:shopping/constant/colors.dart';
import 'package:shopping/constant/dimens.dart';
import 'package:shopping/constant/strings.dart';
import 'package:shopping/pages/sing_up_page.dart';
import 'package:shopping/widgets/input_text_field_wiget.dart';
import '../view_items/login_page_view_items.dart';
import '../widgets/easy_text_widget.dart';
import '../widgets/facebook_google_image_widget.dart';
import '../widgets/login_singup_butto_widget.dart';
import 'package:provider/provider.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return  ChangeNotifierProvider(
      create: (context)=>LoginPageBloc(),
      child: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Consumer<LoginPageBloc>(
                  builder: (context,provider,child)=>Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(kFaceBookLogo),
                      const EasyTextWidget(color: Colors.black,text: kWelcomeBackText, fontSize: kFPS22x,fontWeight:FontWeight.w700 ,),
                      const EasyTextWidget(color: Colors.black38,text: kLoginToYourAccountText, fontSize: kFPS13x,fontWeight:FontWeight.w400 ,),
                      const SizedBox(height: kFPS15x,),
                       InputTextFieldWidget(hintText: kEnterEmailORPhoneText, controller: provider.getEmailController, globalKey: provider.getGlobalKey, validator: (value) {
                         if(value == null || value.isEmpty){
                           return "Please enter your email";
                         }
                       },),
                      const SizedBox(height: kFPS15x,),
                       InputTextFieldWidget(showText: provider.getObscuredText,obscureText: provider.getObscuredText,hintText: kEnterPasswordText ,showIcon: true,onPressed: (){
                        provider.toggleTextVisibility();
                      }, controller: provider.getPasswordController, globalKey: provider.getGlobalKey, validator: (value) {
                         if(value == null || value.isEmpty){
                           return "Please enter your password";
                         }else if(int.parse(value)<8){
                           return "Password must be at lease 8 letters";
                         }
                       },),
                      CheckBoxAndForgotPasswordWidget(isChecked: provider.getIsChecked,
                        onChanged: (checked){
                            provider.toggleChecked();
                        },
                      ),
                      LoginAndSingUpButtonWidget(width:size*0.85 ,text: kLogInText, onTap: () {
                        provider.userSinIn(context);
                      },),
                      ORTextItemView(size: size),
                      const SizedBox(height: kFPS10x,),
                      const FaceBookAndGoogleImageWidget(),
                      const SizedBox(height: kFPS15x,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          EasyTextWidget(color: Colors.black, text: kNOAccountText, fontSize: kFPS14x, fontWeight: FontWeight.w400),
                          EasyTextWidget(color: kYellowColor, text: kCreateAccountText, fontSize: kFPS16x, fontWeight: FontWeight.w400),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
    );
  }
}


