import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


const colorDeepOrange = Color.fromRGBO(231, 111, 81, 1.0);
const colorGreen = Color.fromRGBO(42,157,143, 1);
const colorBlack = Color.fromRGBO(45, 59, 66, 1);
const colorAssBlack = Color.fromRGBO(200, 202, 208, 1.0);
const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);

// for background image
screenBackground(context) {
  return SvgPicture.asset(
    'assets/images/screen-back.svg',
    alignment: Alignment.center,
    width: MediaQuery.sizeOf(context).width,
    height: MediaQuery.sizeOf(context).height,
    fit: BoxFit.cover,
  );
}


// for Input Style
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
        color: colorAssBlack, width: 1,
      ),
    ),
    border: const OutlineInputBorder(),
    labelText: inputLabelText,
  );
}

// Custom Widget / Reusable widget
DecoratedBox dropDownStyle(child) {
  return DecoratedBox(
      decoration: BoxDecoration(
        color: colorWhite,
        border: Border.all(
          color: colorAssBlack,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10),),
      ),
    child: child,
  );
}

// Button Style
ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}