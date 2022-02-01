
class User {

  String userID;
  bool isActive;
  DateTime created;
  DateTime updated;
  String firstName;
  String lastName;
  String alias;
  DateTime birthday;
  String email;
  String phoneNumber;
  String password;
  bool isAcceptTerms;

  User(
      this.userID,
      this.isActive,
      this.created,
      this.updated,
      this.firstName,
      this.lastName,
      this.alias,
      this.birthday,
      this.email,
      this.phoneNumber,
      this.password,
      this.isAcceptTerms);

  User.fromJson(Map<String, dynamic> json)
      : userID = json['userID'] as String,
        isActive = json['isActive'] as bool,
        created = DateTime.parse(json['created'] as String),
        updated = DateTime.parse(json['updated'] as String),
        firstName = json['firstName'] as String,
        lastName = json['lastName'] as String,
        alias = json['alias'] as String,
        birthday = DateTime.parse(json['birthday'] as String),
        email = json['email'] as String,
        phoneNumber = json['phoneNumber'] as String,
        password = json['password'] as String,
        isAcceptTerms = json['isAcceptTerms'] as bool;

  Map<String, dynamic> toJson() => {
    'userID' : userID,
    'isActive' : isActive,
    'created' : created.toString(),
    'updated' : updated.toString(),
    'firstName' : firstName,
    'lastName' : lastName,
    'alias' : alias,
    'birthday' : birthday.toString(),
    'email' : email,
    'phoneNumber' : phoneNumber,
    'password' : password,
    'isAcceptTerms' : isAcceptTerms,
  };

  @override
  String toString() {
    return 'User{userID: $userID, isActive: $isActive, '
        'created: $created, updated: $updated, firstName: $firstName, '
        'lastName: $lastName, alias: $alias, birthday: $birthday, '
        'email: $email, phoneNumber: $phoneNumber, password: $password, '
        'isAcceptTerms: $isAcceptTerms}';
  }
}
