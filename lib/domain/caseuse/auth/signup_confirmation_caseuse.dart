
import 'package:qard_wallet/data/database/repository/auth_repository.dart';
import 'package:qard_wallet/data/webservice/restclient/auth_restclient.dart';
import 'package:qard_wallet/domain/caseuse/caseuse.dart';
import 'package:qard_wallet/domain/model/auth/confirmation.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';

class SignUpConfirmationCaseUse implements ICaseUse<Confirmation, User>  {

  late IAuthRepository _repository;
  late IAuthRestClient _restClient;

  SignUpConfirmationCaseUse() {
    _repository = AuthRepository();
    _restClient = AuthRestClient();
  }

  @override
  Stream<User> execute(Confirmation param) {
    // TODO: implement execute
    throw UnimplementedError();
  }

}