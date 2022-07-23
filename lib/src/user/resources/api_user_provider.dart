import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

class EasyLearnApiProvider {
  Client client = new Client();
  final _apiKey = dotenv.env['API_KEY'];
  final _baseUrl = dotenv.env['BASE_URL'];

  Future<dynamic> login() async {}
}
