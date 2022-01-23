
import 'package:qard_wallet/data/database/repository/auth_repository.dart';
import 'package:qard_wallet/data/webservice/restclient/auth_restclient.dart';
import 'package:qard_wallet/domain/caseuse/caseuse.dart';
import 'package:qard_wallet/domain/model/auth/signup.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';

class SignUpCaseUse implements ICaseUse<Signup, User> {

  late IAuthRepository _repository;
  late IAuthRestClient _restClient;

  SignUpCaseUse() {
    _repository = AuthRepository();
    _restClient = AuthRestClient();
  }

  @override
  Stream<User> execute(Signup signup) {


    return _restClient.signup(signup);
  }

}