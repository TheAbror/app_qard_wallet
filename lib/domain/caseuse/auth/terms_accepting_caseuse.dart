
import 'package:qard_wallet/domain/caseuse/caseuse.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';
import 'package:uuid/uuid.dart';

class TermsAcceptingCaseUse implements ICaseUse<Uuid, User> {

  @override
  Stream<User> execute(Uuid param) {
    // TODO: implement execute
    throw UnimplementedError();
  }

}