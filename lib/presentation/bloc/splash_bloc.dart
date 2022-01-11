
import 'package:qard_wallet/domain/enums/init_type.dart';
import 'package:rxdart/rxdart.dart';

class SplashBloc {

  //late IHttpRepository _repository;
  late BehaviorSubject<InitType> _subject;

  SplashBloc() {
    //_repository = HttpRepository();
    _subject = BehaviorSubject<InitType>();
  }

  void getCardBalance(String cardNumber) {

    const Stream<InitType> stream = Stream.empty();

    _subject.sink.addStream(stream);
  }

  void dispose() {
    _subject.close();
  }

  Stream<InitType> get cardBalanceStream => _subject.stream;
}