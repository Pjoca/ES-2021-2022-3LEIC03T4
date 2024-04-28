import 'dart:convert';

import 'package:uni/model/entities/library_ocupation.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

/// Parses information about the Library Ocupation.



  /// Extracts a list of exams from an HTTP [response].
  Future<Ocupation> parseOcupation(http.Response response) async {
    if (response.statusCode == 200) {

      dynamic body = jsonDecode(response.body);



      final Ocupation occupation = Ocupation.fromJson(body);


      return occupation;
    } else {
      throw 'Unable to retrieve posts.';
    }
  }

