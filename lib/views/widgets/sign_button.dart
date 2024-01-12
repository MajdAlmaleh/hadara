import 'package:flutter/material.dart';
import 'package:hadara/views/home.dart';
import 'package:hadara/views/widgets/custom_button.dart';

class SignButton extends StatelessWidget {
  final String text;
  const SignButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: CustomButton(
        onPressed: () {
          // if (formKey.currentState!.validate()) {
          //   formKey.currentState!.save();
          //   if (isSignIn) {

          //   } else {

          //   }
          // }
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
        },
        text: text,
      ),
    );
  }
}
