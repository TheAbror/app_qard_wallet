
import 'package:qard_wallet/data/database/configuration/sql.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';

abstract class IAuthRepository {
  Stream<void> ping();
  Stream<User> signInWithEmail();
  Stream<User> signInWithPhoneNumber();
  Stream<void> confirmation();
  Stream<void> confirmationWithBiometry();
  Stream<void> createCodeForEmail();
  Stream<void> createCodeForPhoneNumber();
  Stream<User> signup();
  Stream<void> updateSignup();
  Stream<void> createOrUpdatePassword();
  Stream<void> acceptTermsAndConditions();
  Stream<void> signOut();
}

class AuthRepository extends Sql implements IAuthRepository {

  @override
  Stream<void> acceptTermsAndConditions() {
    // TODO: implement aceptTermsAndConditions
    throw UnimplementedError();
  }

  @override
  Stream<void> confirmation() {
    // TODO: implement confirmate
    throw UnimplementedError();
  }

  @override
  Stream<void> confirmationWithBiometry() {
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
  Stream<User> signInWithEmail() {
    // TODO: implement siginWithEmail
    throw UnimplementedError();
  }

  @override
  Stream<User> signInWithPhoneNumber() {
    // TODO: implement siginWithPhoneNumber
    throw UnimplementedError();
  }

  @override
  Stream<void> signOut() {
    // TODO: implement signout
    throw UnimplementedError();
  }

  @override
  Stream<User> signup() {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  Stream<void> updateSignup() {
    // TODO: implement updateSignup
    throw UnimplementedError();
  }

}