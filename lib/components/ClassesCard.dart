import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/components/CardUtils.dart';
import 'package:ripetizioni/components/IconText.dart';
import 'package:ripetizioni/data/model/classes/Classes.dart';

class ClassesCard extends StatelessWidget {
  final Classes _classes;
  final VoidCallback onTapCallback;
  final CardUtils _utils = CardUtils();

  ClassesCard(this._classes, {required this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Ink(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: _utils.getCardColor(_classes.subject!)),
            borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          onTap: () => onTapCallback(),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: IconText(
                            _classes.getTeacherFullName(),
                            'assets/teacher.png',
                            Colors.white,
                            FontWeight.bold)),
                    Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: IconText(
                            _classes.getClassDate(),
                            'assets/calendar.png',
                            Colors.white,
                            FontWeight.bold)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Text(
                    'TAP TO BOOK',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
