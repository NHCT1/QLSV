create view thongke_sv_nam
as
select *
from THISINH
where GioiTinh='Nam'



Alter view thongke_dt_duoi_10
as
select THISINH.*
from Thi,THISINH
where TongDiem <=10 and THI.SoBD=THISINH.SoBD



Alter view thongke_sv_MayMac_diemthilonhon5
as
select CHUYENNGANH.TenChuyenNganh, THISINH.*,TongDiem
from THISINH,THI,CHUYENNGANH
where THISINH.SoBD=THI.SoBD and THI.MSChuyenNganh=CHUYENNGANH.MaSo and TenChuyenNganh=N'May Mặc' and TongDiem>=5





select top 1 with ties CHUYENNGANH.TenChuyenNganh,COUNT(THI.SoBD)as 'số lượng'
from THI,THISINH,CHUYENNGANH
where CHUYENNGANH.MaSo=THI.MSChuyenNganh and THI.SoBD=THISINH.SoBD 
Group by   CHUYENNGANH.TenChuyenNganh 
order by count (THI.SoBD)DESC


select CHUYENNGANH.TenChuyenNganh,COUNT(THI.SoBD)as 'số lượng'
from THI,THISINH,CHUYENNGANH
where CHUYENNGANH.MaSo=THI.MSChuyenNganh and THI.SoBD=THISINH.SoBD 
Group by   CHUYENNGANH.TenChuyenNganh 
having COUNT(THI.SoBD)>=3



--Cách lấy dữ liệu từ dòng số n đến dòng số n (CÁCH 1)
with bang_lk
as
(
	select ROW_NUMBER() over(order by HoTen desc) as RowNumBer,*
	from THISINH
)
	
SELECT *
from bang_lk
where RowNumBer >=2 and RowNumBer <=5

 
 
 
--Cách lấy dữ liệu NGẪU NHIÊN
select top 5 HoTen 
from THISINH
order by NEWID()




--Dùng PIVOT: Để nhóm Dữ liệu theo các cột
Select 'TongSoLuong' as TongSl_THISINH,[MM],[XD],[KT]
from (Select MSChuyenNganh,TongDiem from THI) as Bang_nguon
PIVOT
(
	Sum(TongDiem) for MSChuyenNganh in ([MM],[XD],[KT])
)
as Bang_Chuyen





