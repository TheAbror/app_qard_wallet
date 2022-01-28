
class User {

  String userID;
  String companyID;
  String organizationID;
  String isActive;
  DateTime created;
  String createdBy;
  DateTime updated;
  String updatedBy;
  String firstName;
  String lastName;
  String alias;
  DateTime birthday;
  String email;
  String phoneNumber;
  String password;
  String isAcceptTerms;

  User(
      this.userID,
      this.companyID,
      this.organizationID,
      this.isActive,
      this.created,
      this.createdBy,
      this.updated,
      this.updatedBy,
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
        companyID = json['companyID'] as String,
        organizationID = json['organizationID'] as String,
        isActive = json['isActive'] as String,
        created = DateTime.parse(json['created'] as String),
        createdBy = json['createdBy'] as String,
        updated = DateTime.parse(json['updated'] as String),
        updatedBy = json['updatedBy'] as String,
        firstName = json['firstName'] as String,
        lastName = json['lastName'] as String,
        alias = json['alias'] as String,
        birthday = DateTime.parse(json['birthday'] as String),
        email = json['email'] as String,
        phoneNumber = json['phoneNumber'] as String,
        password = json['password'] as String,
        isAcceptTerms = json['isAcceptTerms'] as String;

  Map<String, dynamic> toJson() => {
    'userID' : userID,
    'companyID' : companyID,
    'organizationID' : organizationID,
    'isActive' : isActive,
    'created' : created.toString(),
    'createdBy' : createdBy,
    'updated' : updated.toString(),
    'updatedBy' : updatedBy,
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
    return 'User{userID: $userID, companyID: $companyID, '
        'organizationID: $organizationID, isActive: $isActive, '
        'created: $created, createdBy: $createdBy, updated: $updated, '
        'updatedBy: $updatedBy, firstName: $firstName, '
        'lastName: $lastName, alias: $alias, birthday: $birthday, '
        'email: $email, phoneNumber: $phoneNumber, password: $password, '
        'isAcceptTerms: $isAcceptTerms}';
  }
}
