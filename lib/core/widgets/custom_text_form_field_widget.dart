import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:locall_app/core/extensions/context_extension.dart';

// ignore: must_be_immutable
class CustomTextFormFieldWidget extends StatefulWidget {
  CustomTextFormFieldWidget({
    required this.name,
    required this.icon,
    required this.hintText,
    this.filled = true,
    this.verticalPaddingValue,
    this.horizontalPaddingValue,
    super.key,
  });

  final String name;
  final IconData icon;
  final String hintText;
  final bool filled;
  double? verticalPaddingValue;
  double? horizontalPaddingValue;

  @override
  State<CustomTextFormFieldWidget> createState() =>
      _CustomTextFormFieldWidgetState();
}

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    widget.horizontalPaddingValue == null
        ? widget.horizontalPaddingValue = context.paddingVerticalWidgets
        : widget.horizontalPaddingValue = widget.horizontalPaddingValue;
    widget.verticalPaddingValue == null
        ? widget.verticalPaddingValue = 0
        : widget.verticalPaddingValue = widget.verticalPaddingValue;
    return Padding(
      padding: EdgeInsets.only(
        left: widget.horizontalPaddingValue!,
        right: widget.horizontalPaddingValue!,
        top: widget.verticalPaddingValue!,
        bottom: widget.verticalPaddingValue!,
      ),
      child: FormBuilderTextField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        name: widget.name,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.theme.primaryColor),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.colorScheme.error,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.colorScheme.error,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: EdgeInsets.zero,
          prefixIcon: Container(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            margin: EdgeInsets.only(right: context.width * 0.012),
            decoration: BoxDecoration(
              color: context.theme.colorScheme.onPrimary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(30),
              ),
            ),
            child:
                Icon(color: context.theme.colorScheme.secondary, widget.icon),
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: context.theme.hintColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.colorScheme.onPrimary,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.theme.colorScheme.onPrimary),
            borderRadius: BorderRadius.circular(25),
          ),
          filled: widget.filled,
          fillColor: Colors.black.withOpacity(0.1),
        ),
      ),
    );
  }
}
