class CTHD {
  int? id;
  int? iDHoaDon;
  int? iDSanPham;
  int? iDDiaChi;
  int? soLuong;
  int? gia;
  int? thanhTien;
  int? iDKhachHang;
  String? ten;
  String? sDT;
  String? diaChi;
  int? iDLoaiSp;
  int? iDNhaPhanPhoi;
  String? tenSp;
  String? hinhAnh;
  String? kichThuoc;
  int? noiBat;
  String? mauSac;
  String? moTa;
  String? thongTin;
  int? tonKho;

  CTHD(
      {this.id,
      this.iDHoaDon,
      this.iDSanPham,
      this.iDDiaChi,
      this.soLuong,
      this.gia,
      this.thanhTien,
      this.iDKhachHang,
      this.ten,
      this.sDT,
      this.diaChi,
      this.iDLoaiSp,
      this.iDNhaPhanPhoi,
      this.tenSp,
      this.hinhAnh,
      this.kichThuoc,
      this.noiBat,
      this.mauSac,
      this.moTa,
      this.thongTin,
      this.tonKho});

  CTHD.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iDHoaDon = json['IDHoaDon'];
    iDSanPham = json['IDSanPham'];
    iDDiaChi = json['IDDiaChi'];
    soLuong = json['SoLuong'];
    gia = json['Gia'];
    thanhTien = json['ThanhTien'];
    iDKhachHang = json['IDKhachHang'];
    ten = json['Ten'];
    sDT = json['SDT'];
    diaChi = json['DiaChi'];
    iDLoaiSp = json['IDLoaiSp'];
    iDNhaPhanPhoi = json['IDNhaPhanPhoi'];
    tenSp = json['TenSp'];
    hinhAnh = json['HinhAnh'];
    kichThuoc = json['KichThuoc'];
    noiBat = json['NoiBat'];
    mauSac = json['MauSac'];
    moTa = json['MoTa'];
    thongTin = json['ThongTin'];
    tonKho = json['TonKho'];
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
    data['IDKhachHang'] = iDKhachHang;
    data['Ten'] = ten;
    data['SDT'] = sDT;
    data['DiaChi'] = diaChi;
    data['IDLoaiSp'] = iDLoaiSp;
    data['IDNhaPhanPhoi'] = iDNhaPhanPhoi;
    data['TenSp'] = tenSp;
    data['HinhAnh'] = hinhAnh;
    data['KichThuoc'] = kichThuoc;
    data['NoiBat'] = noiBat;
    data['MauSac'] = mauSac;
    data['MoTa'] = moTa;
    data['ThongTin'] = thongTin;
    data['TonKho'] = tonKho;
    return data;
  }
}
