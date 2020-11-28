import 'package:surveys_app/data/usecases/usecases.dart';
import 'package:surveys_app/domain/usecases/usecases.dart';
import 'package:surveys_app/main/factories/factories.dart';

SaveCurrentAccount makeLocalSaveCurrentAccount() {
  return LocalSaveCurrentAccount(
      saveSecureCacheStorage: makeLocalStorageAdapter());
}
