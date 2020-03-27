import 'package:redhotblocpatternsample/response/sample_response.dart';

class SampleProvider {


  Future<SampleResponse> updateUser() async {

    Map<String, dynamic> json = await null;


    return SampleResponse.fromJson(json);
  }

}