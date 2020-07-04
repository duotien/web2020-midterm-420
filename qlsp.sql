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
    Hinh varchar(50) COLLATE utf8_unicode_ci
);

