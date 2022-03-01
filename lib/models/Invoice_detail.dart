
class InvoiceDetail {
  int? id;
  int? iDHoaDon;
  int? iDSanPham;
  int? iDDiaChi;
  int? soLuong;
  int? gia;
  int? thanhTien;
  String? updatedAt;
  String? createdAt;

  InvoiceDetail(
      {this.id,
      this.iDHoaDon,
      this.iDSanPham,
      this.iDDiaChi,
      this.soLuong,
      this.gia,
      this.thanhTien,
      this.updatedAt,
      this.createdAt});

  InvoiceDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iDHoaDon = json['IDHoaDon'];
    iDSanPham = json['IDSanPham'];
    iDDiaChi = json['IDDiaChi'];
    soLuong = json['SoLuong'];
    gia = json['Gia'];
    thanhTien = json['ThanhTien'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['IDHoaDon'] = iDHoaDon;
    data['IDSanPham'] = iDSanPham;
    data['IDDiaChi'] = iDDiaChi;
    data['SoLuong'] = soLuong;
    data['Gia'] = gia;
    data['ThanhTien'] = thanhTien;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    return data;
  }
}