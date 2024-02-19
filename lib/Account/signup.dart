import 'package:flutter/material.dart';
import 'package:preferences_broadcasts/Account/login.dart';

import '../components/button.dart';
import '../components/google_btn.dart';
import '../components/textfield.dart';
import '../home.dart';

class Signup extends StatelessWidget {

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  Signup({super.key});

  void signup(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10.0,),
              // Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/logo.png',
                  height: 100.0,),
                ],
              ),
              const SizedBox(height: 15.0,),
              const Text('HOMEIO', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, letterSpacing: 10.0),),
              //Welcome message
              const Text('Your home away from home!', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              const SizedBox(height: 20.0,),

              //textfields, username, password
              MyTextFields(controller: nameController,hintText: 'Names', obscureText: false,),
              const SizedBox(height: 10.0,),
              MyTextFields(controller: emailController,hintText: 'Email', obscureText: false,),
              const SizedBox(height: 10.0,),
              MyTextFields(controller: passwordController, hintText: 'Password', obscureText: true,),
              const SizedBox(height: 10.0,),
              const SizedBox(height: 20.0,),

              //button
              MyButton(text:'Sign up', onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const Home();
                }));
                
              }),
              const SizedBox(height: 30.0,),

              //or
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 20.0,
                      endIndent: 10.0,
                      thickness: 1.0,
                    )
                  ),
                  Text('Or Use', style: TextStyle(fontSize: 16.0,color: Color.fromARGB(255, 79, 77, 82)),),
                  Expanded(
                    child: Divider(
                      indent: 10.0,
                      endIndent: 20.0,
                      thickness: 1.0,
                    )
                  ),
                ],
              ),

              //sign in with google
              GoogleBtn(onTap: (){}),
          
              // sign up if no account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  const Text('Already a member? ', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold, color: Color.fromARGB(197, 36, 22, 56)),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Login();
                      }));
                    },
                    child: const Text('Login here', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 60, 12, 233), decoration: TextDecoration.underline, decorationThickness: 2.0, decorationColor: Color.fromARGB(255, 60, 12, 233)),
                    )
                  ),
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}