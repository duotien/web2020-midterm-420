CREATE DATABASE IF NOT EXISTS qlsp;

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
    TenLoai VARCHAR(50) COLLATE utf8_unicode_ci NOT NULL,
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

/*Thêm dữ liệu*/

INSERT INTO LOAI (MaLoai, TenLoai, MoTa) VALUES
('LXE00', 'Ô tô', 'Ô tô con 4 - 6 chỗ'),
('LXE01', 'Xe tải', 'Xe tải để vận tải'),
('LXE02', 'Xe bán tải', 'Xe gia đình, du lịch'),
('LXE03', 'Xe thể thao', 'Tốc độ cao'),
('LXE04', 'Xe gắn máy', 'Xe nhỏ, tối đa 2 người'),
('LXE05', 'Xe PKL', 'Xe máy phân khối lớn'),
('LXE06', 'Xe đạp', 'Sử dụng cơ chân để di chuyển'),
('LXE07', 'Xe tăng', 'Hỏa lực cao, di chuyển chậm'),
('LXE08', 'Xe lăn', 'Rất phổ biến với người tật nguyền'),
('LXE09', 'Xe đạp điện', 'hiện đại hơn xe đạp'),
('LXE10', 'Xe cẩu', 'Dùng để cẩu xe');

/*HangHoa(#MaHH, TenHH, DonGia, Hinh)*/
INSERT INTO HANGHOA (MaHH, TenHH, DonGia, Hinh) VALUES
('OTO00', 'Ford68', 1000, 'Ford68.png'),
('OTO01', 'Toyota Wigo', 600, 'Wigo.png'),
('TANK00', 'T54 843', 3000, 'T54.png'),
('TANK01', 'M1A1 Abrams', 2000, 'M1A1.png'),
('SCO00', 'Honda Dream', 200, 'Dream.png'),
('XLAN00', 'Lucass X79Z', 400, 'XLan00.png'),
('XLAN01', 'Lucass X7', 500, 'XLan01.png');

#KhachHang(#MaKH, HoTen, DienThoai, Email)
INSERT INTO KHACHHANG (MaKH, HoTen, DienThoai, Email) VALUES
('GUEST', 'Guest', '123456789', 'guest@mail'),
('KH00', 'Duong Tien', '37242344', 'tien@email.com'),
('KH01', 'Thanh Phung', '7436214', 'phungtung@email.com'),
('KH02', 'Gia Phat', '089432475', 'phatjsd@email.com'),
('KH03', 'Nhut Minh Phung', '231566424', 'MinhPh@email.com'),
('KH04', 'Phan Nhat Minh', '32475954', 'PhNhMinh@email.com'),
('KH05', 'Doan Minh Tan', '32485564', 'tanmin@email.com'),
('KH06', 'Duong Gia Bao', '34235623', 'dgbaogia@email.com'),
('KH07', 'Michael De Santa', '7684443', 'miceldes@email.com'),
('KH08', 'Trevor Phillips', '43742375', 'trephilips@email.com'),
('KH09', 'Franklin Clinton', '6542380', 'frankclinton@email.com');