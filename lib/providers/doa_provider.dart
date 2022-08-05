import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/doa.dart';

class DoaProvider extends ChangeNotifier {
  Future<List<Doa>> fetchDoa() async {
    final response = await http.get(
      Uri.parse('https://doa-doa-api-ahmadramadhan.fly.dev/api'),
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List<Doa> doa = data.map(
        (item) {
          return Doa.fromJson(item);
        },
      ).toList();
      return doa;
    } else {
      throw Exception('Failed to load data doa');
    }
  }
}
