
import 'package:qard_wallet/data/database/configuration/sql.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';
import 'package:rxdart/rxdart.dart';

abstract class IAuthRepository {

  Stream<User> signup(User signup);
  Stream<User> confirmation(User confirmation);
  Stream<User> createOrUpdatePassword(User password);
  Stream<User> acceptTermsAndConditions(User userID);
  Stream<User> updateSignup(User signup);


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
  Stream<User> signup(User signup) {
    return getConnection().flatMap((db) {

      final Future<int> update = db.insert('User', signup.toJson());

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
  Stream<User> confirmation(User user) {
    return getConnection().flatMap((db) {

      final Future<int> update = db.update('User', user.toJson(),
          where: 'userID = ?', whereArgs: [1]);

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
  Stream<User> createOrUpdatePassword(User user) {
    return getConnection().flatMap((db) {

      final Future<int> update = db.update('User', user.toJson(),
          where: 'userID = ?', whereArgs: [1]);

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
  Stream<User> acceptTermsAndConditions(User userID) {
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
  Stream<User> updateSignup(User signup) {
    return getConnection().flatMap((db) {

        final Future<int> update = db.update('User', signup.toJson(),
          where: 'userID = ?', whereArgs: [1]);
        
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
