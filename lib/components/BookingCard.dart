import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/components/CardUtils.dart';
import 'package:ripetizioni/components/IconText.dart';
import 'package:ripetizioni/data/model/booking/Booking.dart';

class BookingCard extends StatelessWidget {
  final Booking _booking;
  final VoidCallback onTapCallback;
  final CardUtils _utils = CardUtils();

  BookingCard(this._booking, {required this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: _utils.getCardColor(_booking.subject!)),
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
                      _booking.subject!.capitalize!,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    if (_booking.status == 'active')
                      Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: IconText(
                              _booking.getTeacherFullName(),
                              'assets/teacher.png',
                              Colors.white,
                              FontWeight.bold)),
                    if (_booking.status == 'active')
                      Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: IconText(
                              _booking.getClassDate(),
                              'assets/calendar.png',
                              Colors.white,
                              FontWeight.bold)),
                    if (_booking.status != 'active')
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: IconText(
                            ('Status ' + _booking.status!).capitalize!,
                            _booking.status == 'passed'
                                ? 'assets/calendar_passed.png'
                                : 'assets/calendar_canceled.png',
                            Colors.white,
                            FontWeight.bold),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        _booking.getBookingDateFormatted().toUpperCase(),
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
                    _utils.getCardIcon(_booking.subject!),
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
