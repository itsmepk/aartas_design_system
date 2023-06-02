import 'dart:convert';
import 'dart:developer';

import 'package:aartas_design_system/models/visits_model.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class VisitPurposeProvider extends ChangeNotifier {
  List<VisitPurposeData> list = [];

  List<VisitPurposeData> getList() {
    return list;
  }

  Future<VisitPurposeListResponse?> fetchList(
    String? baseUrl,
  ) async {
    var url = Uri.parse("$baseUrl/user/visit/purpose/list");

    final res = await http.get(url);
    log("(${res.statusCode}) $url");

    if (res.statusCode == 200) {
      var _res = VisitPurposeListResponse.fromJson(json.decode(res.body));
      list = _res.data!;
      notifyListeners();
      return _res;
    } else {
      return null;
    }
  }
}
