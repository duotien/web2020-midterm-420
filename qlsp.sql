CREATE IF NOT EXISTS qlsp;

use qlsp;

/*
Loai(#MaLoai, TenLoai, MoTa)
HangHoa(#MaHH, TenHH, DonGia, Hinh)
KhachHang(#MaKH, HoTen, DienThoai, Email)
HoaDon(#MaHD, NgayLapHD, MaKH, TongTien)
ChiTietHoaDon(#MaCTHD, MaHD, MaHH, SoLuong)
*/

CREATE TABLE IF NOT EXISTS LOAI (
    MaLoai VARCHAR(10) COLLATE utf8_unicode_ci NOT NULL,
    TenLoai VARCHAR(20) COLLATE utf8_unicode_ci NOT NULL,
    MOTA VARCHAR(50) COLLATE utf8_unicode_ci NULL,
    PRIMARY KEY (MaLoai)
);

/*HangHoa(#MaHH, TenHH, DonGia, Hinh)*/

CREATE TABLE IF NOT EXISTS HANGHOA (
    MaHH VARCHAR(10) COLLATE utf8_unicode_ci NOT NULL,
    TenHH VARCHAR(50) COLLATE utf8_unicode_ci NOT NULL,
    DonGia INT(11) NOT NULL,
    Hinh varchar(50) COLLATE utf8_unicode_ci,
    PRIMARY KEY (MaHH)
);

#KhachHang(#MaKH, HoTen, DienThoai, Email)
CREATE TABLE IF NOT EXISTS KHACHHANG (
    MaKH VARCHAR(10) COLLATE utf8_unicode_ci NOT NULL,
    HoTen VARCHAR(50) COLLATE utf8_unicode_ci NOT NULL,
    DienThoai VARCHAR(15) COLLATE utf8_unicode_ci NULL,
    Email VARCHAR(50) COLLATE utf8_unicode_ci NULL,
    PRIMARY KEY (MaKH)
);

#HoaDon(#MaHD, NgayLapHD, MaKH, TongTien)
CREATE TABLE IF NOT EXISTS HOADON (
    MaHD VARCHAR(10) COLLATE utf8_unicode_ci NOT NULL,
    NgayLapHD Datetime NOT NULL,
    MaKH VARCHAR(10) COLLATE utf8_unicode_ci NULL,
    TongTien INT(11),
    PRIMARY KEY (MaHD),
    CONSTRAINT FOREIGN KEY (MaKH) REFERENCES KHACHHANG(MaKH)
);

#ChiTietHoaDon(#MaCTHD, MaHD, MaHH, SoLuong)
CREATE TABLE IF NOT EXISTS CHITIETHOADON (
    MaCTHD VARCHAR(10) COLLATE utf8_unicode_ci NOT NULL,
    MaHD VARCHAR(10) COLLATE utf8_unicode_ci NOT NULL,
    MaHH VARCHAR(10) COLLATE utf8_unicode_ci NULL,
    SoLuong INT(11),
    PRIMARY KEY (MaCTHD),
    CONSTRAINT FOREIGN KEY (MaHD) REFERENCES HOADON(MaHD),
    CONSTRAINT FOREIGN KEY (MaHH) REFERENCES HANGHOA(MaHH)
);
