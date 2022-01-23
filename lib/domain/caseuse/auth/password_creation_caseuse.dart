
import 'package:qard_wallet/data/database/repository/auth_repository.dart';
import 'package:qard_wallet/data/webservice/restclient/auth_restclient.dart';
import 'package:qard_wallet/domain/caseuse/caseuse.dart';
import 'package:qard_wallet/domain/model/auth/password.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';

class PasswordCreationCaseUse implements ICaseUse<Password, User> {

  late IAuthRepository _repository;
  late IAuthRestClient _restClient;

  PasswordCreationCaseUse() {
    _repository = AuthRepository();
    _restClient = AuthRestClient();
  }

  @override
  Stream<User> execute(Password param) {
    // TODO: implement execute
    throw UnimplementedError();
  }
}