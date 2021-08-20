import 'package:flutter/material.dart';

class EmptyListView extends StatelessWidget {
  String? _message;
  double? _width;
  double? _height;

  EmptyListView([this._message, this._width = 200, this._height = 200]);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/img_booking_not_found.png',
          width: _width,
          height: _height,
          fit: BoxFit.cover,
        ),
        if (_message != null) Text(_message!)
      ],
    );
  }
}
