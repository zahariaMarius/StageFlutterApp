import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/components/CardUtils.dart';
import 'package:ripetizioni/data/model/subject/Subject.dart';

class SubjectCard extends StatelessWidget {
  final Subject _subject;
  final VoidCallback onTapCallback;
  final CardUtils _cardUtils = CardUtils();

  SubjectCard(this._subject, {required this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: _cardUtils.getCardColor(_subject.name!)),
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
                    Text(
                      _subject.name!.capitalize!,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        (_subject.nClasses.toString() + ' remaining classes').toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .overline
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Image.asset(
                    _cardUtils.getCardIcon(_subject.name!),
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
