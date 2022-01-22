
import 'package:qard_wallet/data/database/configuration/sql.dart';
import 'package:rxdart/rxdart.dart';

abstract class IAuthRepository {
  Stream<void> ping();
  Stream<void> siginWithEmail();
  Stream<void> siginWithPhoneNumber();
  Stream<void> confirmate();
  Stream<void> confirmateWithBiometry();
  Stream<void> createCodeForEmail();
  Stream<void> createCodeForPhoneNumber();
  Stream<void> signup();
  Stream<void> updateSignup();
  Stream<void> createOrUpdatePassword();
  Stream<void> aceptTermsAndConditions();
  Stream<void> signout();
}

class AuthRepository extends Sql implements IAuthRepository {

  @override
  Stream<void> aceptTermsAndConditions() {
    // TODO: implement aceptTermsAndConditions
    throw UnimplementedError();
  }

  @override
  Stream<void> confirmate() {
    // TODO: implement confirmate
    throw UnimplementedError();
  }

  @override
  Stream<void> confirmateWithBiometry() {
    // TODO: implement confirmateWithBiometry
    throw UnimplementedError();
  }

  @override
  Stream<void> createCodeForEmail() {
    // TODO: implement createCodeForEmail
    throw UnimplementedError();
  }

  @override
  Stream<void> createCodeForPhoneNumber() {
    // TODO: implement createCodeForPhoneNumber
    throw UnimplementedError();
  }

  @override
  Stream<void> createOrUpdatePassword() {
    // TODO: implement createOrUpdatePassword
    throw UnimplementedError();
  }

  @override
  Stream<void> ping() {
    // TODO: implement ping
    throw UnimplementedError();
  }

  @override
  Stream<void> siginWithEmail() {
    // TODO: implement siginWithEmail
    throw UnimplementedError();
  }

  @override
  Stream<void> siginWithPhoneNumber() {
    // TODO: implement siginWithPhoneNumber
    throw UnimplementedError();
  }

  @override
  Stream<void> signout() {
    // TODO: implement signout
    throw UnimplementedError();
  }

  @override
  Stream<void> signup() {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  Stream<void> updateSignup() {
    // TODO: implement updateSignup
    throw UnimplementedError();
  }

}