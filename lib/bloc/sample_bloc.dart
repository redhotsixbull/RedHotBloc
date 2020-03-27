import 'dart:convert';

import 'package:redhotblocpatternsample/model/user.dart';
import 'package:redhotblocpatternsample/repo/sample_repo.dart';
import 'package:redhotblocpatternsample/response/sample_response.dart';
import 'package:rxdart/rxdart.dart';

class SampleBloc {
  final SampleRepo sampleRepo =SampleRepo();
  final BehaviorSubject<User> _subject =
      BehaviorSubject<User>();
  User user =User();
  dispose() {
    _subject.close();
  }

  updateUser() async {
    User user = await sampleRepo.updateUser();
    _subject.sink.add(user);
  }

  updateUser2() {
    String result = '{"name":"hong" ,"age":7, "addr":"seoul"}';
    Map<String, dynamic> json=jsonDecode(result);
    _subject.sink.add(user.returnfromJson(SampleResponse.fromJson(json)));
  }

  BehaviorSubject<User> get data {
    return _subject;
  }

}
final sampleBloc = SampleBloc();