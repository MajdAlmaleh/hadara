import 'package:flutter/material.dart';
import 'package:hadara/constants.dart';
import 'package:hadara/generated/l10n.dart';
import 'package:hadara/views/variables/variables.dart';
import 'package:hadara/views/widgets/auth_text_field.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      textInputType: TextInputType.number,
      phoneNumberValidator: (value) => phoneNumberValidator!(value, context) ,
      prefixIcon: const Icon(
        Icons.phone,
        color: kAppColor,
      ),
      onSave: (newValue) {
        phoneNumber = newValue!;
      },
      formatter: phoneFormatter,
      hintText: S.of(context).enterYourPhoneNumber ,
    );
  }
}
