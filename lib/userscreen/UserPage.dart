import 'package:flutter/material.dart';
import 'package:instagram1/text_field_input.dart';
class UserProfile extends StatefulWidget {
  const UserProfile({Key? key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController ageController  = TextEditingController();
  final TextEditingController phoneController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              TextFieldInput(
                hintText: 'Enter your username',
                textInputType: TextInputType.emailAddress,
                textEditingController: usernameController,
              ),
              const SizedBox(height: 24,),
              TextFieldInput(
                hintText: 'Enter your email',
                textInputType: TextInputType.emailAddress,
                textEditingController: ageController,
              ),
              const SizedBox(height: 24,),
              TextFieldInput(
                hintText: 'Enter your password',
                textInputType: TextInputType.text,
                textEditingController: phoneController,
                isPass: true,
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  child: const Text('Add New User'),
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
            ],
          ),
        ),
      ),
    );
  }
}
