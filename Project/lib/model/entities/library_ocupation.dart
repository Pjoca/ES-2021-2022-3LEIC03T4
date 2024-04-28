import 'dart:core';

import 'package:flutter/foundation.dart';

class Ocupation {
  final String majorDimension;
  final String range;
  final List<List<dynamic>> values;



  Ocupation({
    @required this.majorDimension,
    @required this.range,
    @required this.values,
  });

  factory Ocupation.fromJson(Map<String, dynamic> json) {


    return Ocupation(
        values: json['values']
            .map<List<String>>((l) => List<String>.from(l)).toList(),
        majorDimension: json['majorDimension'] as String,
        range: json['range'] as String

    );
  }


}