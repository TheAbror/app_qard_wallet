
import 'package:qard_wallet/data/database/repository/auth_repository.dart';
import 'package:qard_wallet/data/webservice/restclient/auth_restclient.dart';
import 'package:qard_wallet/domain/caseuse/caseuse.dart';

class PasswordCreationCaseUse implements ICaseUse<void,void> {

  late IAuthRepository _repository;
  late IAuthRestClient _restClient;

  PasswordCreationCaseUse() {
    _repository = AuthRepository();
    _restClient = AuthRestClient();
  }

  @override
  Stream<void> execute(void param) {
    // TODO: implement execute
    throw UnimplementedError();
  }
}