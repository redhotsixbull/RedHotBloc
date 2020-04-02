import 'dart:convert';

import 'package:redhotblocpatternsample/model/user.dart';
import 'package:redhotblocpatternsample/repo/sample_repo.dart';
import 'package:redhotblocpatternsample/response/sample_response.dart';
import 'package:rxdart/rxdart.dart';

class SampleBloc {
  int count=0;
  final SampleRepo sampleRepo =SampleRepo();
  final BehaviorSubject<User> _subject =
      BehaviorSubject<User>();
  User user =User();
  dispose() {
    _subject.close();
  }

  updateUser() async {
    //get Data from Repository
    User user = await sampleRepo.updateUser();
    _subject.sink.add(user);
  }

  updateUser2() async {
    //Example skip the repo provider,
    //Explain how use This form
    String result = '{"name":"RedHoSixBull" ,"age":30, "addr":"dddd","count":$count}';
    Map<String, dynamic> json= jsonDecode(result);
    count++;

    _subject.sink.add(user.returnfromJson(SampleResponse.fromJson(json)));
  }

  BehaviorSubject<User> get data {
    return _subject;
  }

}
final sampleBloc = SampleBloc();