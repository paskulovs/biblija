import 'dart:convert';

import 'package:bible_repository/src/bible_repository.dart';
import 'package:bible_repository/src/model/bible_model.dart';
import 'package:flutter/services.dart';

class JsonRepository extends BibleRepository {

  @override
  Future<BibleModel> loadBible() async {
    return await _readJsonFile("lib/assets/kjv.json") ?? BibleModel(name: "", books: [],);
  }

  Future<BibleModel?> _readJsonFile(String filePath) async {
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