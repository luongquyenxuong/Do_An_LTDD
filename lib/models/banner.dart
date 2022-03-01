// ignore: camel_case_types
class banner {
  int? id;
  String? anh;

  banner({this.id, this.anh});

  banner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    anh = json['Anh'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Anh'] = anh;
    return data;
  }
}