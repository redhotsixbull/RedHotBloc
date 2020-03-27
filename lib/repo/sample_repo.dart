import 'package:redhotblocpatternsample/model/user.dart';
import 'package:redhotblocpatternsample/provider/sample_provider.dart';
import 'package:redhotblocpatternsample/response/sample_response.dart';

class SampleRepo {
  SampleProvider sampleProvider = SampleProvider();
  SampleResponse sampleResponse = SampleResponse();
  User user =User();
  Future<User> updateUser()async {
    sampleResponse = await sampleProvider.updateUser();

    return user.returnfromJson(sampleResponse);
  }

}