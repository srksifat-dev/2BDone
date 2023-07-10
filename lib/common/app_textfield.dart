import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    super.key,
    required this.controller,
    this.focusNode,
    required this.textCapitalization,
    required this.textInputType,
    required this.hintText,
    this.readOnly = false,
    this.prefix,
    this.autoFocus = false,
    this.validator,
    this.onChanged,
  });
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType textInputType;
  final TextCapitalization textCapitalization;
  final String hintText;
  bool readOnly;
  Widget? prefix;
  bool autoFocus;
  String? Function(String?)? validator;
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        autofocus: autoFocus,
        controller: controller,
        focusNode: focusNode,
        style: Theme.of(context).textTheme.bodySmall,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.only(
            left: 16,
            bottom: 8,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onBackground, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onBackground, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onBackground, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
              width: 2,
            ),
          ),
          prefix: prefix,
        ),
        onChanged: onChanged,
        validator: validator,
        readOnly: readOnly,
        keyboardType: textInputType,
        textCapitalization: textCapitalization,
      ),
    );
  }
}
