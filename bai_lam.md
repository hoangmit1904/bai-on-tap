# BÀI LÀM –(CHỦ ĐỀ QUẢN LÝ MODEL AI)

- **Mã đề:**
- **Họ tên:**nguyễn đăng hoàng
- **Lớp:**
- **Link repository:**
- **Hệ điều hành (Windows/macOS):**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
cd C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai
C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai> get-childitem -force
C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai> mv tai_lieu_ban_giao.txt docs
PS C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai> mkdir backupcp
cp data/chi_phi_model_thang_11.xlsx backup
PS C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai> remove-item model_cache_01.tmp 
get-childitem -force -recurse
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
Directory: C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai


Mode                 LastWriteTime         Length Name              
----                 -------------         ------ ----              
d-----        11/10/2026  11:48 PM                backup            
d-----        11/10/2026  11:36 PM                data              
d-----        11/10/2026  11:45 PM                docs              
d-----        11/10/2026  11:36 PM                evidence          
d-----        11/10/2026  11:37 PM                logs              
d-r---        11/10/2026  12:51 PM                web               
-a----        11/10/2026  12:51 PM             96 .env              
-a----        11/10/2026  12:51 PM           2665 bai_lam.md        


    Directory: 
    C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai\backup


Mode                 LastWriteTime         Length Name              
----                 -------------         ------ ----              
-a----        11/10/2026  12:51 PM           5815 chi_phi_model_than
                                                  g_11.xlsx         


    Directory: 
    C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai\data


Mode                 LastWriteTime         Length Name              
----                 -------------         ------ ----              
-a----        11/10/2026  12:51 PM           5815 Chi_Phi_Model_Than
                                                  g_11.xlsx         


    Directory: 
    C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai\docs


Mode                 LastWriteTime         Length Name              
----                 -------------         ------ ----              
-a----        11/10/2026  12:51 PM            204 tai_lieu_ban_giao.
                                                  txt               


    Directory: 
    C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai\logs


Mode                 LastWriteTime         Length Name              
----                 -------------         ------ ----              
-a----        11/10/2026  12:51 PM           1234 inference_log     


    Directory: 
    C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai\web


Mode                 LastWriteTime         Length Name              
----                 -------------         ------ ----              
d-r---        11/10/2026  12:51 PM                images            
-a----        11/10/2026  12:51 PM            644 app.js            
-a----        11/10/2026  12:51 PM            567 index.html        
-a----        11/10/2026  12:51 PM            460 style.css         


    Directory: 
    C:\Users\User\Downloads\starter-kit\quan-ly-mode-ai\web\images


Mode                 LastWriteTime         Length Name              
----                 -------------         ------ ----              
-a----        11/10/2026  12:51 PM            339 logo-ai-hub.png   


```

## 4.3. Lọc log vận hành Model AI

### a) Lệnh lọc các dòng ERROR

```shell
Get-Content .\logs\inference_logs | Select-String "ERROR" | ForEach-Object { $_.Line } | Set-Content .\logs\loi_model.txt
PS C:\Users\User\Downloads\starter-kit\quan-ly-model-ai> get-content ./logs/loi_model.txt 
```

### 2 dòng đầu tiên trong logs/loi_model.txt
2026-11-10 08:27:45 ERROR POST /v1/chat/completions model=CLAUDE-35
2026-11-10 08:31:12 ERROR POST /v1/audio/transcriptions model=WHISPER-V3
2026-11-10 08:42:15 ERROR POST /v1/chat/completions model=DEEPSEEK-R1
2026-11-10 08:49:51 ERROR POST /v1/images/generations model=FLUX-PRO
2026-11-10 08:53:33 ERROR POST /v1/chat/completions model=CLAUDE-35
2026-11-10 09:05:27 ERROR POST /v1/embeddings model=MISTRAL-L

```text


```

### b) Lệnh đếm số dòng WARNING và kết quả

```shell
(Get-Content .\logs\inference_logs | Select-String "WARNING").Count
>> 

```

```text
5

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
# Ghi lệnh vào đây (xoá dòng này)

```

### Nội dung file logs/tong_hop.txt

```text
(Dán nội dung file vào đây – xoá dòng này)

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] README.md: Heading 1, hình ảnh (`![Alt](path)`), mô tả có **in đậm**, _in nghiêng_ và `inline code`, bảng, code block, task list, blockquote
- [ ] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [ ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | -------------------------- | --------------------------- | -------------- |
| 1   |                            |                             |                |
| 2   |                            |                             |                |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:**
- **Expected:**
- **Actual:**
- **Log:**

### Câu tìm kiếm Google

```text
(Ghi câu tìm kiếm vào đây – xoá dòng này)

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/chi_phi_model_thang_11.xlsx`, không cần ghi vào đây.
