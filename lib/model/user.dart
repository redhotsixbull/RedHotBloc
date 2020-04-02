import 'package:redhotblocpatternsample/response/sample_response.dart';

class User {
  String name;
  int age;
  String addr;
  int count;
  String code;

  User({
    this.name,
    this.age,
    this.addr,
    this.count,
    this.code
  });

  returnfromJson(SampleResponse sampleResponse) {

    return User(
        name: sampleResponse.json["name"],
        addr: sampleResponse.json["addr"],
        age: sampleResponse.json["age"],
        count: sampleResponse.json["count"],
        code: "success"
    );
  }
  
}