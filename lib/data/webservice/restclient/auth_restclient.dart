
import 'package:dio/dio.dart';
import 'package:qard_wallet/data/webservice/configuration/http.dart';
import 'package:qard_wallet/domain/model/auth/confirmation.dart';
import 'package:qard_wallet/domain/model/auth/password.dart';
import 'package:qard_wallet/domain/model/auth/signup.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';
import 'package:rxdart/rxdart.dart';

abstract class IAuthRestClient {

  Stream<User> signup(Signup signup);
  Stream<User> confirmation(Confirmation confirmation);
  Stream<User> createOrUpdatePassword(Password password);
  Stream<User> acceptTermsAndConditions(String userID);
  Stream<User> updateSignup(Signup signup);



  Stream<void> ping();
  Stream<void> signInWithEmail();
  Stream<void> signInWithPhoneNumber();
  Stream<void> confirmationWithBiometry();
  Stream<void> createCodeForEmail();
  Stream<void> createCodeForPhoneNumber();
  Stream<void> signOut();
}

class AuthRestClient extends Http implements IAuthRestClient {

  @override
  Stream<User> signup(Signup signup) {
    final Future<Response> future = getHttpClient()
        .post("/auth/signup");

    return Stream.fromFuture(future)
        .doOnError((error, stacktrace) => print('Error en: /auth/signup => $error'))
        .map((result) => result.data)
        .map((result) => User.fromJson(result));
  }

  @override
  Stream<User> confirmation(Confirmation confirmation) {
    final Future<Response> future = getHttpClient()
        .put("/auth/confirmation");

    return Stream.fromFuture(future)
        .doOnError((error, stacktrace) => print('Error en: /auth/confirmation => $error'))
        .map((result) => result.data)
        .map((result) => User.fromJson(result));
  }

  @override
  Stream<User> createOrUpdatePassword(Password password) {
    final Future<Response> future = getHttpClient()
        .put("/auth/signup/password");

    return Stream.fromFuture(future)
        .doOnError((error, stacktrace) => print('Error en: /auth/signup/password => $error'))
        .map((result) => result.data)
        .map((result) => User.fromJson(result));
  }

  @override
  Stream<User> acceptTermsAndConditions(String userID) {
    final Future<Response> future = getHttpClient()
        .put("/auth/signup/accept-terms");

    return Stream.fromFuture(future)
        .doOnError((error, stacktrace) => print('Error en: /auth/signup/accept-terms => $error'))
        .map((result) => result.data)
        .map((result) => User.fromJson(result));
  }

  @override
  Stream<User> updateSignup(Signup signup) {
    final Future<Response> future = getHttpClient()
        .put("/auth/signup");

    return Stream.fromFuture(future)
        .doOnError((error, stacktrace) => print('Error en: /auth/signup => $error'))
        .map((result) => result.data)
        .map((result) => User.fromJson(result));
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
  Stream<void> ping() {
    // TODO: implement ping
    throw UnimplementedError();
  }

  @override
  Stream<void> signInWithEmail() {
    // TODO: implement siginWithEmail
    throw UnimplementedError();
  }

  @override
  Stream<void> signInWithPhoneNumber() {
    // TODO: implement siginWithPhoneNumber
    throw UnimplementedError();
  }

  @override
  Stream<void> signOut() {
    // TODO: implement signout
    throw UnimplementedError();
  }

}
