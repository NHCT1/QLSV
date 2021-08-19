-- BAI 1. Cho biết danh sách các đối tác cung cấp hàng cho công ty
--(CHÚ THÍCH: lẤY NHỮNG THÔNG TIN CỦA NHÀ CUNG CẤP MÀ CÓ MÃ CÔNG TY TRÙNG VỚI MÃ CÔNG TY CỦA MẶT HÀNG)

SELECT DISTINCT NHACUNGCAP. *
FROM NHACUNGCAP, MATHANG
WHERE NHACUNGCAP.MaCongTy=MATHANG.MaCongTy


--BAI 2.  Mã hàng, tên hàng và số lượng của các mặt hàng hiện có trong công ty

SELECT MaHang, TenHang, SoLuong
FROM  MATHANG

--BAI3.  Họ tên, địa chỉ và năm bắt đầu làm việc của các nhân viên trong cty

SELECT HoNhanVien +' '+ TenNhanVien as [Ho Ten], DiaChi, Year (NgayLamViec) as [NamLamViec]
From NHANVIEN

--BAI 4. 4.	Địa chỉ, điện thoại của nhà cung cấp có tên giao dịch VINAMILK




--BAI 5.	Mã và tên của các mặt hàng có giá trị lớn hơn 100000 và số lượng hiện có ít hơn 50




--BAI 7.	Công ty Việt Tiến đã cung cấp những mặt hàng nào

SELECT TenHang
From MATHANG, NHACUNGCAP
Where NHACUNGCAP.MaCongTy=MATHANG.MaCongTy and TenGiaoDich='VIETTIEN'

--bai 9.	Những khách hàng nào (tên giao dịch) đã đặt mua mặt hàng sữa hộp của công ty

SELECT KHACHHANG.TenGiaoDich
FROM KHACHHANG, NHACUNGCAP, MATHANG
WHERE TenHang=N'Sửa hộp '

--BAI 10   	Đơn đặt hàng số 1 do ai đặt và do nhân viên nào lập, thời gian và địa điểm giao hàng là ở đâu

SELECT SoHoaDon, TenCongTy, TenNhanVien, NgayGiaoHang, KHACHHANG.DiaChi
FROM DONDATHANG, KHACHHANG, NHANVIEN
where DONDATHANG.MaKhachHang=KHACHHANG.MaKhachHang and DONDATHANG.MaNhanVien=NHANVIEN.MaNhanVien
