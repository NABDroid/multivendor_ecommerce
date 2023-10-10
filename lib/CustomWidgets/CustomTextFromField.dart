import 'package:flutter/material.dart';

Widget customTextFromField(
  controller,
  hinttext,
) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
        hintText: hinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )),
  );
}
