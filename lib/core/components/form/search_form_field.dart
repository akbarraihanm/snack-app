import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFormField extends StatelessWidget {
  final double? height;
  final double? width;
  final double radius;
  final Color? borderColor;
  final Color? bgColor;
  final String? hint;
  final TextEditingController? controller;
  final Function(String v)? onChanged;
  final Function(String v)? onSubmit;
  final EdgeInsets? margin;

  const SearchFormField({
    super.key,
    this.height,
    this.width,
    this.radius = 6,
    this.borderColor,
    this.bgColor,
    this.hint,
    this.onChanged,
    this.onSubmit,
    this.controller,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 44,
      width: width ?? double.infinity,
      margin: margin,
      decoration: BoxDecoration(
        color: bgColor ?? Colors.transparent,
        border: Border.all(color: borderColor ?? Colors.transparent),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Icon(
              CupertinoIcons.search,
              size: 24,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              controller: controller,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  hintText: hint,
                  counterText: "",
                  isCollapsed: true,
                  isDense: true,
                  hintStyle:
                  const TextStyle(color: Color(0xff8d8d8d), fontSize: 14),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  contentPadding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 4)),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              keyboardType: TextInputType.text,
              onChanged: onChanged,
              onFieldSubmitted: onSubmit,
              textInputAction: TextInputAction.done,
            ),
          ),
          const Icon(
            Icons.filter_alt,
            color: Colors.grey,
            size: 24,
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
