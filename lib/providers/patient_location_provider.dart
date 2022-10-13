import 'dart:convert';
import 'dart:developer';

import 'package:aartas_design_system/models/response_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PatientLocationProvider extends ChangeNotifier {
  ResponseModel _data = ResponseModel();

  ResponseModel getData() {
    return _data;
  }

  bool _isLoading = false;
  bool isLoading() {
    return _isLoading;
  }

  Future<ResponseModel> fetchData(
    String baseURL,
    String? userID,
    String? location,
    String? latitude,
    String? longitude,
  ) async {
    _isLoading = true;
    notifyListeners();
    var _url = Uri.parse("$baseURL/patient/update/location");
    final res = await http.post(_url, body: {
      "user_id": userID,
      "location": location,
      "latitude": latitude,
      "longitude": longitude,
    });

    String _message = "(${res.statusCode}) $_url";
    log(_message);

    if (res.statusCode == 200 && json.decode(res.body)['status']) {
      var _res = ResponseModel.fromJson(json.decode(res.body));
      _data = _res;
      _isLoading = false;
      notifyListeners();
      return _res;
    } else {
      log(res.body);
      _isLoading = false;
      notifyListeners();
      return ResponseModel(message: _message);
    }
  }
}
