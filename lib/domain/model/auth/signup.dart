
class Signup {

  String firstName;
  String lastName;
  String alias;
  String birthday;
  String email;
  String phoneNumber;

  Signup(this.firstName,
      this.lastName,
      this.alias,
      this.birthday,
      this.email,
      this.phoneNumber);

  Signup.fromJson(Map<String, dynamic> json)
      : firstName = json['firstName'] as String,
        lastName = json['lastName'] as String,
        alias = json['alias'] as String,
        birthday = json['birthday'] as String,
        email = json['email'] as String,
        phoneNumber = json['phoneNumber'] as String;

  Map<String, dynamic> toJson() => {
    'firstName' : firstName,
    'lastName' : lastName,
    'alias' : alias,
    'birthday' : birthday,
    'email' : email,
    'phoneNumber' : phoneNumber,
  };

  @override
  String toString() {
    return 'Signup{firstName: $firstName, lastName: $lastName, '
        'alias: $alias, birthday: $birthday, email: $email, '
        'phoneNumber: $phoneNumber}';
  }
}
