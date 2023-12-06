import 'package:flutter/material.dart';
import 'package:instagram1/text_field_input.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}):super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController  = TextEditingController();
  final TextEditingController bioController  = TextEditingController();
  final TextEditingController usernameController  = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    bioController.dispose();
    usernameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(child: Container(),flex: 2,),
              // SvgPicture.asset('assets/ic_instagram.svg',color: Colors.white,height: 100,),
              Text('Instagram',style: TextStyle(color: Colors.white,fontSize: 30),),
              const SizedBox(height: 64,),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3DuUXG2ue_bB3rkt_3mFVm_ofkL1jyq_tRw&usqp=CAU"),
                  ),
                  Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(onPressed: (){},
                          icon: Icon(Icons.add_a_photo)))
                ],
              ),
              const SizedBox(height: 24,),
              TextFieldInput(
                hintText: 'Enter your username',
                textInputType: TextInputType.text,
                textEditingController: usernameController,
              ),
              const SizedBox(height: 24,),
              TextFieldInput(
                hintText: 'Enter your email',
                textInputType: TextInputType.emailAddress,
                textEditingController: emailController,
              ),
              const SizedBox(height: 24,),
              TextFieldInput(
                hintText: 'Enter your password',
                textInputType: TextInputType.text,
                textEditingController: passwordController,
                isPass: true,
              ),
              const SizedBox(height: 24,),
              TextFieldInput(
                hintText: 'Enter your bio',
                textInputType: TextInputType.text,
                textEditingController: bioController,
              ),
              const SizedBox(height: 24,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  child: const Text('Log in'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)
                    ),
                  ),
                      color: Colors.blue
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              Flexible(child: Container(),flex: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Don't have an account?"),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold),),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );

  }
}
