class Invoice {
  int? id;
  int? iDKhachHang;
  int? thanhTien;
  int? trangThai;
  String? createdAt;

  Invoice(
      {this.id,
      this.iDKhachHang,
      this.thanhTien,
      this.trangThai,
      this.createdAt});

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
      id: json['id'],
      iDKhachHang: json['IDKhachHang'],
      thanhTien: json['ThanhTien'],
      trangThai: json['TrangThai'],
      createdAt: json['created_at']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['IDKhachHang'] = iDKhachHang;
    data['ThanhTien'] = thanhTien;
    data['TrangThai'] = trangThai;
    data['created_at'] = createdAt;

    return data;
  }
}
