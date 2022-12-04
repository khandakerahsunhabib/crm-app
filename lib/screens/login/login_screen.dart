import 'package:crm_app/core/color_constant.dart';
import 'package:crm_app/screens/widgets/app_text_field.dart';
import 'package:crm_app/screens/widgets/button.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  static const String routeName='/login_screen';
  final emailController = TextEditingController();
  final passwordController= TextEditingController();
  Widget _loginScreenUpperPart(){
    return Column(
      children:[
        const SizedBox(height: 10),
        Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        //color: Colors.blue,
        image: DecorationImage(
            image: AssetImage('assets/images/login_banner.png',),
            fit: BoxFit.contain
        ),
      ),
    ),
    ]);
  }
  Widget _loginScreenLowerPart(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              const Text('Login',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Times new Roman',
                    color: Colors.blueAccent
                ),
              ),
              const SizedBox(height: 10,),
              AppTextField(
                controller: emailController, hintText: 'Email', icon: const Icon(Icons.email_outlined),
              ),
              AppTextField(
                controller: passwordController, hintText: 'Password', icon:const Icon(Icons.lock_outline),
              ),
              const SizedBox(height: 20,),
              Button(title: 'Login', color: Colors.blue, onTap: (){}, textColor: Colors.white),
              TextButton(
                style: const ButtonStyle(
                  alignment: Alignment.center,
                ),
                  onPressed: (){},
                  child: const Text("Don't have an account? Signup"))
            ]
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children:[
              _loginScreenUpperPart(),
              const SizedBox(height: 80,),
              _loginScreenLowerPart()
            ],
          ),
        ),
      ),
    );
  }
}
