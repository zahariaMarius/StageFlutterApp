import 'package:flutter/material.dart';

class CardUtils {

  Map<String, List<Color>> _colors = {
    'french': [Color(0xFFFA709A), Color(0xFFFEE140)],
    'chemistry': [Color(0xFF66A6FF), Color(0xFF89F7FE)],
    'computer science': [Color(0xFF8EC5FC), Color(0xFFE0C3FC)],
    'history': [Color(0xFFC79081), Color(0xFFDFC125)],
    'english': [Color(0xFFFF0844), Color(0xFFFFB199)],
  };

  Map<String, String> _icons = {
    'french': 'assets/img_card_french_subject.png',
    'chemistry': 'assets/img_card_chemistry_subject.png',
    'computer science': 'assets/img_card_computer_science_subject.png',
    'history': 'assets/img_card_history_subject.png',
    'english': 'assets/img_card_english_subject.png',
  };

  getCardColor(String subject) {
    return _colors[subject];
  }

  getCardIcon(String subject) {
    return _icons[subject];
  }

}