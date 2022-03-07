import 'package:flutter/material.dart';

class UserFormField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  Function validtor;
  String hintText;
  UserFormField(
      {Key? key,
      required this.controller,
      required this.validtor,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      validator: validtor(),
      // onSaved: (value) {
      //   controller.text = value!;
      // },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
