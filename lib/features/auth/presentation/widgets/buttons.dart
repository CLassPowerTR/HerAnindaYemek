import 'package:flutter/material.dart';

ElevatedButton CustomElevatedButton({
  required String text,
  required VoidCallback onPressed,
  Color? backgroundColor,
  Color? textColor,
  double? width,
  double? height,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Color.fromRGBO(255, 9, 0, 1)),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      )),
    ),
    onPressed: onPressed,
    child: Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        )),
  );
}

ElevatedButton GoogleElevatedButton() {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      )),
    ),
    onPressed: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'lib/assets/image/googleIcon.png',
          width: 24,
          height: 24,
        ),
        SizedBox(width: 8),
        Text('Google',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )),
      ],
    ),
  );
}
