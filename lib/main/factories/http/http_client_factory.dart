import 'package:http/http.dart';
import 'package:surveys_app/data/http/http_client.dart';
import 'package:surveys_app/infra/http/http.dart';

HttpClient makeHttpAdapter() {
  final client = Client();
  return HttpAdapter(client);
}
