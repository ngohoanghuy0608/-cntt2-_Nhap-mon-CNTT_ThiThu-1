# BÀI LÀM – THI THỬ HACKATHON 01

- **Mã đề:** Thi thử
- **Họ tên:** Tô Mạnh Hào
- **Lớp:** CNTT1
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** Windown

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> pwd
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> ls -force
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> Get-ChildItem -Recurse -Forc
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> mv .\nhap_hang.txt .\docs\
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> mv .\logo_van_phong.png .\media\
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> rm .\temp_131.tmp
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> cd .\logs\
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website\logs> ls -force
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website\logs> cd ..


```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text

    Directory: C:\Users\Manh Hao\Downloads\van-phong-pham-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/23/2026   9:03 AM                backup
d-----        10/23/2026   8:47 AM                data
d-----        10/23/2026   8:57 AM                docs
d-----        10/23/2026   9:01 AM                logs
d-----        10/23/2026   9:02 AM                media
-a----        10/23/2026   8:35 AM           2253 bai_lam.md
-a----        10/23/2026   8:35 AM             22 temp_131.tmp


    Directory: C:\Users\Manh Hao\Downloads\van-phong-pham-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/23/2026   8:35 AM           6053 logo_van_phong.png


    Directory: C:\Users\Manh Hao\Downloads\van-phong-pham-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/23/2026   8:35 AM           6105 don_ban_hang_thang_10.xls
                                                  x


    Directory: C:\Users\Manh Hao\Downloads\van-phong-pham-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/23/2026   8:35 AM             51 nhap_hang.txt


    Directory: C:\Users\Manh Hao\Downloads\van-phong-pham-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/23/2026   8:35 AM             78 .env
-a----        10/23/2026   8:35 AM           1053 shop.log


    Directory: C:\Users\Manh Hao\Downloads\van-phong-pham-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/23/2026   8:35 AM           6053 logo_van_phong.png

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> get-content .\logs\shop.log |  select-string "ERROR" >> .\logs\daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-10-28 08:18:28 [INFO] Dang nhap tai khoan khach
2025-10-28 08:21:28 [INFO] Them san pham vao gio

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
# Tac gia: Mạnh Hào
# Ngay tao: HOAN_THIEN
Write-Host "Dang loc log...""=== BAO CAO LOI ===" > logs/auto_report.txt
Get-Content logs/shop.log | Select-String "ERROR" >> logs/auto_report.txt
Write-Host "Hoan thanh!"
```

### Nội dung file logs/auto_report.txt

```text
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:33:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:39:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:42:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 09:12:28 [ERROR] Thanh toan bi tu choi



```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> get-content .\logs\shop.log |  select-string "ERROR" | Measure-Object

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
Count    : 6
Average  :
Sum      :
Maximum  :
Minimum  :
Property :

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> "===TONG HOP LOG===" >> logs/tong_hop.txt
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> get-content .\logs\shop.log |  select-string "WARNING" >> .\logs\tong_hop.txt
PS C:\Users\Manh Hao\Downloads\van-phong-pham-website> get-content .\logs\shop.log |  select-string "WARNING" |Measure-Object >> .\logs\tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
===TONG HOP LOG===

2025-10-28 08:51:28 [WARNING] Thoi gian tai trang cham
2025-10-28 08:54:28 [WARNING] Anh san pham dung luong lon
2025-10-28 08:57:28 [WARNING] Thoi gian tai trang cham




Count    : 3
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 



```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_ban_thang_10.xlsx`, không cần ghi vào đây.
