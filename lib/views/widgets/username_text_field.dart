import 'package:flutter/material.dart';
import 'package:hadara/constants.dart';
import 'package:hadara/generated/l10n.dart';
import 'package:hadara/views/variables/variables.dart';
import 'package:hadara/views/widgets/auth_text_field.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0, left: 0, bottom: 40),
      child: AuthTextField(
        textInputType: TextInputType.text,
        prefixIcon: const Icon(
          Icons.person,
          color: kAppColor,
        ),
        phoneNumberValidator: (value) => usernameValidator!(value, context),
        onSave: (newValue) {
          username = newValue!;
        },
        formatter: usernameFormatter,
        hintText: S.of(context).enterYourUsername,
      ),
    );
  }
}
