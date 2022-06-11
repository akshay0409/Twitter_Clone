import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url), headers: {
      'Authorization':
          'Bearer AAAAAAAAAAAAAAAAAAAAAE9%2FdgEAAAAAaOFnSIqAJxhClLfgEMG82AaEi9U%3Dx0QIfnZYSkMeRpZJqr8xmWK0XAuuAd7KuYEWokLnWOOLdVEJLG'
    });

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
