
class HoaDonTab {
  int? id;
  int? iDKhachHang;
  int? thanhTien;
  int? trangThai;
  String? createdAt;
  String? email;
  String? password;
  String? hoTen;
  int? gioiTinh;
  String? ngaySinh;
  String? sDT;
  String? avatar;
  int? admin;
  String? ten;
  String? diaChi;
  List<Chitiethoadon>? chitiethoadon;

  HoaDonTab(
      {this.id,
      this.iDKhachHang,
      this.thanhTien,
      this.trangThai,
      this.createdAt,
      this.email,
      this.password,
      this.hoTen,
      this.gioiTinh,
      this.ngaySinh,
      this.sDT,
      this.avatar,
      this.admin,
      this.ten,
      this.diaChi,
      this.chitiethoadon});

  HoaDonTab.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iDKhachHang = json['IDKhachHang'];
    thanhTien = json['ThanhTien'];
    trangThai = json['TrangThai'];
    createdAt = json['created_at'];
    email = json['email'];
    password = json['password'];
    hoTen = json['HoTen'];
    gioiTinh = json['GioiTinh'];
    ngaySinh = json['NgaySinh'];
    sDT = json['SDT'];
    avatar = json['Avatar'];
    admin = json['Admin'];
    ten = json['Ten'];
    diaChi = json['DiaChi'];
    if (json['chitiethoadon'] != null) {
      chitiethoadon = <Chitiethoadon>[];
      json['chitiethoadon'].forEach((v) {
        chitiethoadon!.add(Chitiethoadon.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['IDKhachHang'] = iDKhachHang;
    data['ThanhTien'] = thanhTien;
    data['TrangThai'] = trangThai;
    data['created_at'] = createdAt;
    data['email'] = email;
    data['password'] = password;
    data['HoTen'] = hoTen;
    data['GioiTinh'] = gioiTinh;
    data['NgaySinh'] = ngaySinh;
    data['SDT'] = sDT;
    data['Avatar'] = avatar;
    data['Admin'] = admin;
    data['Ten'] = ten;
    data['DiaChi'] = diaChi;
    if (chitiethoadon != null) {
      data['chitiethoadon'] =
          chitiethoadon!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Chitiethoadon {
  int? id;
  int? iDHoaDon;
  int? iDSanPham;
  int? iDDiaChi;
  int? soLuong;
  int? gia;
  int? thanhTien;
  String? createdAt;
  SanPham? sanPham;

  Chitiethoadon(
      {this.id,
      this.iDHoaDon,
      this.iDSanPham,
      this.iDDiaChi,
      this.soLuong,
      this.gia,
      this.thanhTien,
      this.createdAt,
      this.sanPham});

  Chitiethoadon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iDHoaDon = json['IDHoaDon'];
    iDSanPham = json['IDSanPham'];
    iDDiaChi = json['IDDiaChi'];
    soLuong = json['SoLuong'];
    gia = json['Gia'];
    thanhTien = json['ThanhTien'];
    createdAt = json['created_at'];
   
    sanPham = json['san_pham'] != null
        ? SanPham.fromJson(json['san_pham'])
        : null;
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
    data['created_at'] = createdAt;
    
    if (sanPham != null) {
      data['san_pham'] = sanPham!.toJson();
    }
    return data;
  }
}

class SanPham {
  int? id;
  int? iDLoaiSp;
  int? iDNhaPhanPhoi;
  String? tenSp;
  int? gia;
  String? hinhAnh;
  String? kichThuoc;
  int? noiBat;
  String? mauSac;
  String? moTa;
  String? thongTin;
  int? tonKho;
  int? trangThai;
  String? createdAt;
 

  SanPham(
      {this.id,
      this.iDLoaiSp,
      this.iDNhaPhanPhoi,
      this.tenSp,
      this.gia,
      this.hinhAnh,
      this.kichThuoc,
      this.noiBat,
      this.mauSac,
      this.moTa,
      this.thongTin,
      this.tonKho,
      this.trangThai,
      this.createdAt,
   });

  SanPham.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iDLoaiSp = json['IDLoaiSp'];
    iDNhaPhanPhoi = json['IDNhaPhanPhoi'];
    tenSp = json['TenSp'];
    gia = json['Gia'];
    hinhAnh = json['HinhAnh'];
    kichThuoc = json['KichThuoc'];
    noiBat = json['NoiBat'];
    mauSac = json['MauSac'];
    moTa = json['MoTa'];
    thongTin = json['ThongTin'];
    tonKho = json['TonKho'];
    trangThai = json['TrangThai'];
    createdAt = json['created_at'];
 
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['IDLoaiSp'] = iDLoaiSp;
    data['IDNhaPhanPhoi'] = iDNhaPhanPhoi;
    data['TenSp'] = tenSp;
    data['Gia'] = gia;
    data['HinhAnh'] = hinhAnh;
    data['KichThuoc'] = kichThuoc;
    data['NoiBat'] = noiBat;
    data['MauSac'] = mauSac;
    data['MoTa'] = moTa;
    data['ThongTin'] = thongTin;
    data['TonKho'] = tonKho;
    data['TrangThai'] = trangThai;
    data['created_at'] = createdAt;
    
    return data;
  }
}
