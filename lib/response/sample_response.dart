class SampleResponse {

  Map<String, dynamic> json;
  String error;
  SampleResponse({this.json, this.error});


  factory SampleResponse.fromJson(Map<String, dynamic> json) {
    return SampleResponse(json: json);
  }
}