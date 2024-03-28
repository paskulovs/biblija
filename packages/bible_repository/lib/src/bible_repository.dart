import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'model/bible_model.dart';

class BibleRepository {

  Future<BibleModel?> readJsonFile(String filePath) async {
    final bibleString = await rootBundle.loadString(filePath);
    if(bibleString.isEmpty) {
      return null;
    }

    var bibleJson = jsonDecode(bibleString);
    if(bibleJson == null || bibleJson.isEmpty || !(bibleJson is Map<String, dynamic>)) {
      return null;
    }

    return BibleModel.fromJson(bibleJson);
  }
}
