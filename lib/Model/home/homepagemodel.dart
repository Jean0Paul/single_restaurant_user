// ignore_for_file: prefer_collection_literals, camel_case_types

class homepagemodel {
  int? status;
  String? message;

  homepagemodel({this.status, this.message});

  homepagemodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}