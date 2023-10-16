import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/login_page.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.active){
            final user = snapshot.data;
            if(user==null){
              return const LoginPage();
            }else{
              return const HomePage();
            }
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
