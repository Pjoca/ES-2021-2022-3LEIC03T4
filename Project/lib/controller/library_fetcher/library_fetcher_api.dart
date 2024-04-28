import 'package:uni/controller/library_fetcher/library_fetcher.dart';
import 'package:uni/controller/networking/network_router.dart';
import 'package:http/http.dart' as http;
import '../../model/entities/library_ocupation.dart';
import 'package:uni/controller/parsers/parser_ocupation.dart';




//https://sheets.googleapis.com/v4/spreadsheets/1gZRbEX4y8vNW7vrl15FCdAQ3pVNRJw_uRZtVL6ORP0g/values/C2:C7?key=AIzaSyBnYN8GfcOG4N1Mi_5p07z6n9oRucFIjnM

class LibraryFetcherAPI extends LibraryFetcher{
  final String ocupationURL = "https://sheets.googleapis.com/v4/spreadsheets/1gZRbEX4y8vNW7vrl15FCdAQ3pVNRJw_uRZtVL6ORP0g/values/C2:C7?key=AIzaSyBnYN8GfcOG4N1Mi_5p07z6n9oRucFIjnM";

  Future<Ocupation> getOcupation() async {


    final Ocupation occupation = await parseOcupation(
        await http.get(UriString(ocupationURL).toUri())
    );

    return occupation;
  }
}
