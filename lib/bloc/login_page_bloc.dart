import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/alert_dioalog_widget.dart';

class LoginPageBloc extends ChangeNotifier{
  bool _isDispose = false;
  bool _obscuredText = true;
  bool _isChecked = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  ///Getter methods
  get getObscuredText => _obscuredText;
  get getIsChecked => _isChecked;
  get getEmailController => _emailController;
  get getPasswordController => _passwordController;
  get getGlobalKey=>_globalKey;
  void userSinIn(context)async{
    if(_globalKey.currentState!.validate()){ 
      const LoadingDialogWidget();
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
      Navigator.of(context).pop();
    }
  }
  
  void toggleTextVisibility(){
    _obscuredText = !_obscuredText;
    notifyListeners();
  }
  void toggleChecked(){
    _isChecked = !_isChecked;
    notifyListeners();
  }
  @override
  void notifyListeners() {
    if(!_isDispose){
      super.notifyListeners();
    }
  }
  @override
  void dispose() {
    _isDispose = true;
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}