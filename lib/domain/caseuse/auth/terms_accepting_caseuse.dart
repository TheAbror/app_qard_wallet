
import 'package:qard_wallet/data/database/repository/auth_repository.dart';
import 'package:qard_wallet/data/webservice/restclient/auth_restclient.dart';
import 'package:qard_wallet/domain/caseuse/caseuse.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';
import 'package:rxdart/rxdart.dart';

class TermsAcceptingCaseUse implements ICaseUse<String, User> {

  late IAuthRepository _repository;
  late IAuthRestClient _restClient;

  TermsAcceptingCaseUse() {
    _repository = AuthRepository();
    _restClient = AuthRestClient();
  }

  @override
  Stream<User> execute(String userID) {
    return _restClient.acceptTermsAndConditions(userID)
        .flatMap((event) => _repository.acceptTermsAndConditions(event));
  }

}
