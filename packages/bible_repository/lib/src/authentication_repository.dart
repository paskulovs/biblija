import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bible_repository/src/model/book_model.dart';

class AuthenticationRepository {

  Future<BibleModel?> readJsonFile(String filePath) async {
    var bibleString = await File(filePath).readAsString();
    if(bibleString.isEmpty) {
      return null;
    }

    var bibleJson = jsonDecode(bibleString);
    if(bibleJson == null || bibleJson.isEmpty || !(bibleJson is List<Map<String, Object?>>)) {
      return null;
    }

    return bibleJson.map((bookJson) => BookModel.fromJson(bookJson)).toList();
  }
}
