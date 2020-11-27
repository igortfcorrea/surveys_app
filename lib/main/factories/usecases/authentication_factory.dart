import 'package:surveys_app/data/usecases/usecases.dart';
import 'package:surveys_app/domain/usecases/usecases.dart';
import 'package:surveys_app/main/factories/http/http.dart';
import 'package:surveys_app/main/factories/http/http_client_factory.dart';

Authentication makeRemoteAuthentication() {
  return RemoteAuthentication(
      httpClient: makeHttpAdapter(), url: makeApiUrl('login'));
}
