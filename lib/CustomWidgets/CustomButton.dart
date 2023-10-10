import 'package:flutter/material.dart';

Widget customButton(title, onpressed) {
  return SizedBox(
    width: 600,
    height: 50,
    child: ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
