import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

SizedBox textField(
  BuildContext context, {
  String? hintText,
  Color? hintTextColor,
  BorderRadius? borderRadius,
  Color? borderColor,
  TextInputType? keyboardType,
  TextEditingController? controller,
  bool obscureText = false,
  bool showSuffixIcon = false,
  VoidCallback? onTap,
  int? minLines,
  int? maxLines,
  EdgeInsetsGeometry? contentPadding,
  String? labelText,
  Color? labelTextColor,
  bool readOnly = false,
  bool expands = true, // Yeni parametre ekledik.
  TextAlignVertical? textAlignVertical,
  List<TextInputFormatter>? inputFormatters,
}) {
  return SizedBox(
    height: 62,
    width: MediaQuery.of(context).size.width,
    child: TextField(
      readOnly: readOnly,
      controller: controller,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      minLines: expands ? null : minLines,
      maxLines: expands ? null : maxLines,

      expands: expands, // Bu alanı doldurmasını sağlar.
      textAlignVertical: TextAlignVertical.center, // Metin üstte hizalanır
      style: TextStyle(
        color: Colors.black,
      ),
      keyboardType: keyboardType ??
          TextInputType.emailAddress, // Klavye tipi e-posta için
      decoration: InputDecoration(
        alignLabelWithHint: true,
        filled: true,
        fillColor: Colors.grey.shade200,
        isDense: true,
        labelStyle:
            TextStyle(color: labelTextColor ?? Colors.grey.withOpacity(0.5)),
        labelText: labelText,
        contentPadding: contentPadding, // Dikey dolgu
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              borderRadius ?? BorderRadius.circular(12.0), // Kenar yumuşaklığı
          borderSide: BorderSide(
            color: Colors.orange,
            width: 2.0,
          ),
        ),
        suffixIcon: showSuffixIcon
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: onTap,
              )
            : null,
        hintStyle:
            TextStyle(color: hintTextColor ?? Colors.grey.withOpacity(0.5)),
        hintText: hintText, // Hint metni
        border: OutlineInputBorder(
          borderRadius:
              borderRadius ?? BorderRadius.circular(12.0), // Kenar yumuşaklığı
          borderSide: BorderSide(
            color: borderColor ?? Colors.orange, // Kenar çizgisinin rengi
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}
