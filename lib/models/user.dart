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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['password'] = this.password;
    data['HoTen'] = this.hoTen;
    data['GioiTinh'] = this.gioiTinh;
    data['NgaySinh'] = this.ngaySinh;
    data['SDT'] = this.sDT;
    data['Avatar'] = this.avatar;
    data['Admin'] = this.admin;
    return data;
  }
}
