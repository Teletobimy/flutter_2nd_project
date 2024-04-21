import 'package:flutter/material.dart';
import 'package:flutter_2nd_project/constants/gaps.dart';
import 'package:flutter_2nd_project/constants/sizes.dart';
import 'package:flutter_2nd_project/features/authentication/login_screen.dart';
import 'package:flutter_2nd_project/features/authentication/widgets/auth_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  void onLoginTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => LoginScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size40,
          ),
          child: Column(
            children: [
              Gaps.v80,
              Text(
                "Sign up",
                style: TextStyle(
                    fontSize: Sizes.size24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              Gaps.v20,
              Text(
                "Create a Profile, follow other accounts, make your own videos, and more.",
                style: TextStyle(fontSize: Sizes.size16, color: Colors.black45),
                textAlign: TextAlign.center,
              ),
              Gaps.v40,
              AuthButton(
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                  ),
                  text: "User email & password"),
              Gaps.v12,
              AuthButton(
                  icon: FaIcon(
                    FontAwesomeIcons.apple,
                  ),
                  text: "Continue with Apple"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade100,
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: Sizes.size16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an acccount?",
                  style: TextStyle(
                    fontSize: Sizes.size16,
                  ),
                ),
                Gaps.h5,
                GestureDetector(
                  onTap: () => onLoginTap(context),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: Sizes.size16,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
