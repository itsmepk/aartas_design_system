import 'dart:convert';
import 'dart:developer';

import 'package:aartas_design_system/const.dart';
import 'package:aartas_design_system/models/category_model.dart';
import 'package:aartas_design_system/models/sub_category_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CategoryProvider extends ChangeNotifier {
  List<CategoryData> _categoryList = [];

  List<CategoryData> getCategoryList() {
    return _categoryList;
  }

  Future<CategoryResponse> fetchCategoryList() async {
    var _url = Uri.parse("$baseURL/clinishare/get/category/list");
    final res = await http.post(_url);
    if (res.statusCode == 200) {
      _categoryList = CategoryResponse.fromJson(json.decode(res.body)).data!;
      notifyListeners();
      return CategoryResponse.fromJson(json.decode(res.body));
    }
    String _message = "CategoryProvider(fetchCategoryList):${res.statusCode}";
    log(_message);
    return CategoryResponse(message: _message);
  }

  List<SubCategoryOptionsData> _categoryOptions = [];

  List<SubCategoryOptionsData> getCategoryOptions() {
    return _categoryOptions;
  }

  Future<SubCategoryOptionsResponse> fetchCategoryOptions(
    String? subCategoryID,
    String? search,
  ) async {
    var _url = Uri.parse("$baseURL/clinishare/get/category/list");
    final res = await http.post(_url);
    if (res.statusCode == 200) {
      _categoryOptions =
          SubCategoryOptionsResponse.fromJson(json.decode(res.body)).data!;
      notifyListeners();
      return SubCategoryOptionsResponse.fromJson(json.decode(res.body));
    }
    String _message = "CategoryProvider(fetchCategoryList):${res.statusCode}";
    log(_message);
    return SubCategoryOptionsResponse(message: _message);
  }
}
