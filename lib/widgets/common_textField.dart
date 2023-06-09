import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ping_project/constants/constants.dart';

class CommonTextField extends StatelessWidget {
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffix;
  final String? label;
  final TextEditingController? controller;
  final bool? autofocus;
  final String? errorText;
  final String? validate;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputformater;
  final String? text;
  final bool obsecureText;
  final Color? focusBorderColor;
  final double? focusWidth;
  final Color? borderColor;
  final double? width;
  final dynamic onTap;
  final dynamic validator;
  final dynamic keyboardType;
  final dynamic onChanged;
  final dynamic onSubmit;
  final int? maxLine;
  final Color? fillColor;
  final bool? readOnly;
  final double? contentTopPadding;

  const CommonTextField({
    Key? key,
    this.hint,
    this.text,
    this.inputformater,
    this.prefixIcon,
    this.controller,
    this.suffix,
    this.label,
    this.errorText,
    this.validate,
    this.focusWidth,
    this.focusBorderColor,
    this.width,
    this.borderColor,
    this.obsecureText = false,
    this.onTap,
    this.focusNode,
    this.validator,
    this.keyboardType,
    this.maxLine,
    this.fillColor,
    this.readOnly,
    this.onChanged,
    this.onSubmit,
    this.autofocus,
    this.contentTopPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   text ?? '',
        // ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          onTap: onTap,
          autofocus: autofocus ?? false,
          keyboardType: keyboardType,
          inputFormatters: inputformater,
          onChanged: onChanged,
          onFieldSubmitted: onSubmit,
          readOnly: readOnly ?? false,
          focusNode: focusNode,
          // autovalidateMode: AutovalidateMode.onUserInteraction,

          textInputAction: TextInputAction.go,
          maxLines: maxLine,
          obscureText: obsecureText,
          // style: GoogleFonts.montserrat(
          //   fontSize: 15.0,
          // ),
          cursorColor: Constants.kBlueColor,
          textCapitalization: TextCapitalization.words,
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            fillColor: fillColor ?? Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none
                // borderSide: const BorderSide(
                //   width: 1,
                //   color: Colors.amber,

                // ),
                ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                width: 1,
                color: Constants.kBlueColor,
              ),
            ),
            contentPadding:
                EdgeInsets.only(left: 10, top: contentTopPadding ?? 2),
            prefixIcon: prefixIcon,
            suffixIcon: suffix,
            // hintStyle: GoogleFonts.montserrat(
            //   fontSize: 18.0,
            //   color: Colors.grey,
            // ),
            hintText: hint,
            labelText: label,
          ),
        ),
      ],
    );
  }
}
