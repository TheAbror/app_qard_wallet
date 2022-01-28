
import 'package:qard_wallet/domain/caseuse/auth/password_creation_caseuse.dart';
import 'package:qard_wallet/domain/caseuse/auth/signup_caseuse.dart';
import 'package:qard_wallet/domain/caseuse/auth/signup_confirmation_caseuse.dart';
import 'package:qard_wallet/domain/caseuse/auth/terms_accepting_caseuse.dart';
import 'package:qard_wallet/domain/caseuse/caseuse.dart';
import 'package:qard_wallet/domain/model/auth/confirmation.dart';
import 'package:qard_wallet/domain/model/auth/password.dart';
import 'package:qard_wallet/domain/model/auth/signup.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';
import 'package:rxdart/rxdart.dart';

class AuthBloc {

  late BehaviorSubject<User> _subject;

  AuthBloc() {
    _subject = BehaviorSubject<User>();
  }

  void signup(Signup signin) {
    final ICaseUse<Signup, User> caseUse =
        SignUpCaseUse();

    final Stream<User> stream =
        caseUse.execute(signin);

    _subject.sink.addStream(stream);
  }

  void confirmation(Confirmation confirmation) {
    final ICaseUse<Confirmation, User> caseUse =
        SignUpConfirmationCaseUse();

    final Stream<User> stream =
        caseUse.execute(confirmation);

    _subject.sink.addStream(stream);
  }

  void createOrUpdatePassword(Password password) {
    final ICaseUse<Password, User> caseUse =
        PasswordCreationCaseUse();

    final Stream<User> stream =
        caseUse.execute(password);

    _subject.sink.addStream(stream);
  }

  void acceptTermsAndConditions(String userID) {
    final ICaseUse<String, User> caseUse =
        TermsAcceptingCaseUse();

    final Stream<User> stream =
        caseUse.execute(userID);

    _subject.sink.addStream(stream);
  }

  void dispose() {
    _subject.close();
  }

  Stream<User> get userStream => _subject.stream;
}
