
import 'package:qard_wallet/data/database/configuration/sql.dart';
import 'package:qard_wallet/domain/model/auth/confirmation.dart';
import 'package:qard_wallet/domain/model/auth/password.dart';
import 'package:qard_wallet/domain/model/auth/signup.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

abstract class IAuthRepository {

  Stream<User> signup(Signup signup);
  Stream<User> confirmation(Confirmation confirmation);
  Stream<User> createOrUpdatePassword(Password password);
  Stream<User> acceptTermsAndConditions(Uuid userID);
  Stream<User> updateSignup(Signup signup);


  Stream<void> ping();
  Stream<User> signInWithEmail();
  Stream<User> signInWithPhoneNumber();
  Stream<void> confirmationWithBiometry();
  Stream<void> createCodeForEmail();
  Stream<void> createCodeForPhoneNumber();
  Stream<void> signOut();
}

class AuthRepository extends Sql implements IAuthRepository {

  @override
  Stream<User> signup(Signup signup) {
    return getConnection().flatMap((db) {

      final Future<int> update = db.insert('User', signup.toMap());

      return Stream.fromFuture(update).flatMap((id) {

        final Future<List<Map<String, Object?>>> select = db.query('User',
            columns: ['userID', 'name', 'age'],
            where: 'userID = ?', whereArgs: [id]);

        return Stream.fromFuture(select)
        //.doOnData((event) db.close())
            .flatMap((list) => Stream.fromIterable(list))
            .map((json) => User.fromJson(json));
      });
    });
  }

  @override
  Stream<User> confirmation(Confirmation confirmation) {
    return getConnection().flatMap((db) {

      final Future<int> update = db.update('User', confirmation.toMap(),
          where: 'userID = ?', whereArgs: [confirmation.id]);

      return Stream.fromFuture(update).flatMap((id) {

        final Future<List<Map<String, Object?>>> select = db.query('User',
            columns: ['userID', 'name', 'age'],
            where: 'userID = ?', whereArgs: [id]);

        return Stream.fromFuture(select)
        //.doOnData((event) db.close())
            .flatMap((list) => Stream.fromIterable(list))
            .map((json) => User.fromJson(json));
      });
    });
  }

  @override
  Stream<User> createOrUpdatePassword(Password password) {
    return getConnection().flatMap((db) {

      final Future<int> update = db.update('User', password.toMap(),
          where: 'userID = ?', whereArgs: [password.id]);

      return Stream.fromFuture(update).flatMap((id) {

        final Future<List<Map<String, Object?>>> select = db.query('User',
            columns: ['userID', 'name', 'age'],
            where: 'userID = ?', whereArgs: [id]);

        return Stream.fromFuture(select)
        //.doOnData((event) db.close())
            .flatMap((list) => Stream.fromIterable(list))
            .map((json) => User.fromJson(json));
      });
    });
  }

  @override
  Stream<User> acceptTermsAndConditions(Uuid userID) {
    return getConnection().flatMap((db) {

      final Future<int> update = db.update('User', {'isAcceptTerms':true},
          where: 'userID = ?', whereArgs: [userID.toString()]);

      return Stream.fromFuture(update).flatMap((id) {

        final Future<List<Map<String, Object?>>> select = db.query('User',
            columns: ['userID', 'name', 'age'],
            where: 'userID = ?', whereArgs: [id]);

        return Stream.fromFuture(select)
        //.doOnData((event) db.close())
            .flatMap((list) => Stream.fromIterable(list))
            .map((json) => User.fromJson(json));
      });
    });
  }

  @override
  Stream<User> updateSignup(Signup signup) {
    return getConnection().flatMap((db) {

        final Future<int> update = db.update('User', signup.toMap(),
          where: 'userID = ?', whereArgs: [signup.id]);
        
        return Stream.fromFuture(update).flatMap((id) {

           final Future<List<Map<String, Object?>>> select = db.query('User',
             columns: ['userID', 'name', 'age'],
             where: 'userID = ?', whereArgs: [id]);

           return Stream.fromFuture(select)
             //.doOnData((event) db.close())
             .flatMap((list) => Stream.fromIterable(list))
             .map((json) => User.fromJson(json));
        });
    });
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

}