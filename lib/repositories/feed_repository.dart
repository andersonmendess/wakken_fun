import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class FeedRepository {
  Future<List> listAll() async {
    final rawData = await rootBundle.loadString("assets/data.json");
    return jsonDecode(rawData);
  }
}
