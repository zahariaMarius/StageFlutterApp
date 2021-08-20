import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconText extends StatelessWidget {
  final String _text;
  final String _icon;
  final Color _color;
  final FontWeight _fontWeight;

  IconText(this._text, this._icon, this._color, this._fontWeight);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset(
            _icon,
            width: 18,
            height: 18,
            color: _color,
          ),
        ),
        Text(
          _text,
          style: Get.textTheme.subtitle2?.copyWith(
            color: _color,
            fontWeight: _fontWeight,
          ),
        ),
      ],
    );
  }
}
