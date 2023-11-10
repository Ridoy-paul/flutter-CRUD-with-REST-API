import 'dart:ui';

import 'package:flutter/material.dart';

const colorDeepOrange = Color.fromRGBO(231, 111, 81, 1.0);
const colorGreen = Color.fromRGBO(42,157,143, 1);
const colorBlack = Color.fromRGBO(45, 59, 66, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);


InputDecoration appInputDecorationStyle(inputLabelText) {
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: colorGreen, width: 1,
      ),
    ),
    fillColor: colorWhite,
    filled: true,
    contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: colorBlack, width: 1,
      ),
    ),
    border: const OutlineInputBorder(),
    labelText: inputLabelText,
  );
}