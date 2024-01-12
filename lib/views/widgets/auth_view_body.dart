import 'package:flutter/material.dart';

import 'package:hadara/constants.dart';
import 'package:hadara/generated/l10n.dart';
import 'package:hadara/views/variables/variables.dart';

import 'password_text_field.dart';
import 'phone_number_text_field.dart';
import 'sign_button.dart';
import 'username_text_field.dart';

class AuthViewBody extends StatefulWidget {
  const AuthViewBody({
    super.key,
    required this.authType,
  });
  final String authType;
  @override
  State<AuthViewBody> createState() => _AuthViewBodyState();
}

class _AuthViewBodyState extends State<AuthViewBody> {
  @override
  void initState() {
    isSignIn = widget.authType == kSignIn ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          isSignIn ? S.of(context).signIn : S.of(context).signUp,
          style: const TextStyle(color: Colors.white, fontSize: 60),
        ),
      ),
      const SizedBox(
        height: 100,
      ),
      Expanded(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    if (!isSignIn)
                      const Padding(
                        padding: EdgeInsets.only(top: 80, right: 10, left: 10),
                        child: UsernameTextField(),
                      ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: isSignIn ? 80 : 10, right: 10, left: 10),
                      child: const PhoneNumberTextField(),
                    ),
                    PasswordTextField(viewPasswordState: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    }),
                    SignButton(
                      text: isSignIn
                          ? S.of(context).signIn
                          : S.of(context).signUp,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.of(context).doNotHaveAnAccount,
                            style: const TextStyle(fontSize: 20),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignIn = !isSignIn;
                                formKey.currentState!.reset();
                              });
                            },
                            child: Text(
                              !isSignIn
                                  ? S.of(context).signIn
                                  : S.of(context).signUp,
                              style: const TextStyle(
                                  color: kAppColor, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
