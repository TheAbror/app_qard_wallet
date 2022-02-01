
import 'package:flutter_test/flutter_test.dart';
import 'package:qard_wallet/data/webservice/restclient/auth_restclient.dart';
import 'package:qard_wallet/domain/model/auth/signup.dart';
import 'package:qard_wallet/domain/model/auth/user.dart';

void main() {

  test('signup', () async {
    final Signup signup = Signup(
        'Ana', 'Tapia', 'Malefica', '1993-08-14',
        'atapia@qardgroup.com', '+584123345678');

    final IAuthRestClient restClient = AuthRestClient();

    final User user = await restClient.signup(signup).first;

    expect(user, equals(null));

  });

}
