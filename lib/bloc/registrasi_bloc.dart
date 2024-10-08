import 'dart:convert';
import 'package:tugas_pertemuan_4/helpers/api.dart';
import 'package:tugas_pertemuan_4/helpers/api_url.dart';
import 'package:tugas_pertemuan_4/model/registrasi.dart';

class RegistrasiBloc {
  static Future<Registrasi> registrasi(
      {String? nama, String? email, String? password}) async {
    String apiUrl = ApiUrl.registrasi;
    var body = {"nama": nama, "email": email, "password": password};
    var response = await Api().post(apiUrl, body);
    var jsonObj = json.decode(response.body);
    return Registrasi.fromJson(jsonObj);
  }
}
