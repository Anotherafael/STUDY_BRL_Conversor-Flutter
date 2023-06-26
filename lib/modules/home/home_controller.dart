import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class HomeController with ChangeNotifier, DiagnosticableTreeMixin {
  final _request = "https://api.hgbrasil.com/finance?format=json&key=3e9a4bc9";

  Future<Map> getData() async {
    final response = await Dio().get(_request);
    return response.data;
  }
}
