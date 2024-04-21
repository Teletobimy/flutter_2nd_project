import 'package:flutter/material.dart';
import 'package:flutter_2nd_project/constants/gaps.dart';
import 'package:flutter_2nd_project/constants/sizes.dart';
import 'package:flutter_2nd_project/features/authentication/widgets/auth_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void onSignUpTap(BuildContext context) {
    Navigator.of(context).pop();
    //무한으로 화면 스택을 쌓지 말고 pop으로 recent screen removal
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
                "Log in",
                style: TextStyle(
                    fontSize: Sizes.size24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              Gaps.v20,
              Text(
                "Manage your account, check notifications, comment on videos, and more.",
                style: TextStyle(fontSize: Sizes.size16, color: Colors.black45),
                textAlign: TextAlign.center,
              ),
              Gaps.v40,
              AuthButton(
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                  ),
                  text: "Use email & password"),
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
                  "Don't have an acccount?",
                  style: TextStyle(
                    fontSize: Sizes.size16,
                  ),
                ),
                Gaps.h5,
                GestureDetector(
                  onTap: () => onSignUpTap(context),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: Sizes.size16,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
