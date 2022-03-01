class User {
  int? id;
  String? email;
  String? password;
  String? hoTen;
  int? gioiTinh;
  String? ngaySinh;
  String? sDT;
  String? avatar;
  int? admin;

  User(
      {this.id,
      this.email,
      this.password,
      this.hoTen,
      this.gioiTinh,
      this.ngaySinh,
      this.sDT,
      this.avatar,
      this.admin});

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        email: json['email'],
        password: json['password'],
        hoTen: json['HoTen'],
        gioiTinh: json['GioiTinh'],
        ngaySinh: json['NgaySinh'],
        sDT: json['SDT'],
        avatar: json['Avatar'],
        admin: json['Admin'],
      );
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['password'] = password;
    data['HoTen'] = hoTen;
    data['GioiTinh'] = gioiTinh;
    data['NgaySinh'] = ngaySinh;
    data['SDT'] = sDT;
    data['Avatar'] = avatar;
    data['Admin'] = admin;
    return data;
  }
}
