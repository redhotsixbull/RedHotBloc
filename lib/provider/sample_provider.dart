import 'package:redhotblocpatternsample/response/sample_response.dart';

class SampleProvider {


  Future<SampleResponse> updateUser() async {
    //Write Your get data source here
    Map<String, dynamic> json = await null;


    return SampleResponse.fromJson(json);
  }

}