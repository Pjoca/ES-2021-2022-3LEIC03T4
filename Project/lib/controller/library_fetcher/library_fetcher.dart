

import '../../model/entities/library_ocupation.dart';

/// Class for fetching the library
abstract class LibraryFetcher {
  Future<Ocupation> getOcupation();
}