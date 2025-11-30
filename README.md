# Website Tin Tức Nhà Đất - MVC

Hệ thống website quản lý và đăng tin về nhà đất, dự án bất động sản được xây dựng bằng ASP.NET MVC.

## 📋 Mô tả

Website Tin Tức Nhà Đất là một hệ thống quản lý và đăng tin về:
- **Nhà đất**: Cho thuê và rao bán
- **Dự án**: Quản lý các dự án bất động sản
- **Tin tức**: Đăng tải các bài viết liên quan đến bất động sản
- **Quản trị**: Hệ thống AdminCP để quản lý nội dung

## 🚀 Tính năng

### Frontend
- Trang chủ hiển thị các nhà đất nổi bật
- Tìm kiếm nâng cao với bộ lọc:
  - Theo loại (cho thuê/rao bán)
  - Theo số phòng ngủ
  - Theo diện tích
  - Theo giá tiền
  - Theo địa điểm
- Chi tiết nhà đất với hình ảnh và thông tin đầy đủ
- Trang danh sách dự án
- Trang tin tức

### Backend (AdminCP)
- Quản lý nhà đất (thêm, sửa, xóa)
- Quản lý dự án
- Quản lý tin tức
- Quản lý tài khoản
- Quản lý địa chỉ
- Thống kê

## 🛠️ Công nghệ sử dụng

- **Framework**: ASP.NET MVC 5.2.3
- **.NET Framework**: 4.6.1
- **Database**: SQL Server (Entity Framework 6.1.3)
- **Frontend**: 
  - Bootstrap 3.1.1
  - jQuery 1.10.2
  - jQuery Validation
- **Backend**: 
  - Entity Framework Code First
  - ASP.NET Identity (Session-based)

## 📦 Yêu cầu hệ thống

- **Visual Studio**: 2015 trở lên (khuyến nghị Visual Studio 2017/2019/2022)
- **SQL Server**: SQL Server 2012 trở lên hoặc SQL Server Express
- **IIS Express**: Đã được tích hợp sẵn trong Visual Studio
- **.NET Framework**: 4.6.1 hoặc cao hơn

## 🔧 Cài đặt

### 1. Clone hoặc tải dự án

```bash
git clone https://github.com/huynhloitg/ASPNET-dk24ttc2-nguyenhuynhloi-websitebatdongsan.git
cd ASPNET-dk24ttc2-nguyenhuynhloi-websitebatdongsan
```

### 2. Cấu hình Database

1. Mở SQL Server Management Studio hoặc sử dụng sqlcmd
2. Tạo database mới hoặc restore từ file `House.sql` có sẵn
3. Cập nhật connection string trong file `Web.config`:

```xml
<connectionStrings>
  <add name="HOUSEEntities" 
       connectionString="metadata=res://*/Models.Model1.csdl|res://*/Models.Model1.ssdl|res://*/Models.Model1.msl;provider=System.Data.SqlClient;provider connection string=&quot;Data Source=YOUR_SERVER\SQLEXPRESS;Initial Catalog=HOUSE;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;MultipleActiveResultSets=True;App=EntityFramework&quot;" 
       providerName="System.Data.EntityClient" />
</connectionStrings>
```

**Lưu ý**: Thay `YOUR_SERVER\SQLEXPRESS` bằng tên server SQL Server của bạn.

### 3. Restore Database (nếu có file House.sql)

```bash
sqlcmd -S YOUR_SERVER\SQLEXPRESS -d HOUSE -E -i House.sql
```

### 4. Mở dự án trong Visual Studio

1. Mở file `WebsiteMVC\WebsiteMVC.sln`
2. Visual Studio sẽ tự động restore các NuGet packages
3. Build solution (Ctrl+Shift+B)

### 5. Chạy ứng dụng

1. Nhấn **F5** hoặc **Ctrl+F5** để chạy ứng dụng
2. Trình duyệt sẽ tự động mở với URL: `http://localhost:11774` (hoặc port khác)

## 🔐 Đăng nhập AdminCP

- **URL**: `http://localhost:11774/admin` hoặc `http://localhost:11774/AdminCP/Login`
- **Username**: `admin`
- **Password**: `admin`

## 📁 Cấu trúc dự án

```
ASPNET-dk24ttc2-nguyenhuynhloi-websitebatdongsan/
├── WebsiteMVC/
│   ├── WebsiteMVC/
│   │   ├── Areas/
│   │   │   └── AdminCP/          # Khu vực quản trị
│   │   ├── Controllers/          # Controllers cho frontend
│   │   ├── Models/              # Entity Framework Models
│   │   ├── Views/               # Views cho frontend
│   │   ├── Content/             # CSS, images, themes
│   │   ├── Scripts/             # JavaScript files
│   │   └── Web.config           # Cấu hình ứng dụng
│   └── WebsiteMVC.sln           # Solution file
└── House.sql                     # Database script
```

## 🗄️ Cấu trúc Database

### Các bảng chính:
- **House**: Thông tin nhà đất
- **DuAn**: Thông tin dự án
- **TinTuc**: Tin tức
- **TaiKhoan**: Tài khoản người dùng
- **Address**: Địa chỉ (Tỉnh/Thành phố, Quận/Huyện, Phường/Xã)
- **AddressHouse**: Liên kết nhà đất với địa chỉ
- **AddressDuAn**: Liên kết dự án với địa chỉ
- **ImageHouse**: Hình ảnh nhà đất
- **ImageDuAn**: Hình ảnh dự án
- **InfoHouse**: Thông tin chi tiết nhà đất
- **InfoDuAn**: Thông tin chi tiết dự án

## 🎨 Giao diện

- Responsive design với Bootstrap 3
- Theme admin hiện đại
- Hỗ trợ tìm kiếm và lọc nâng cao
- Hiển thị hình ảnh với gallery

## 📝 Cấu hình bổ sung

### Globalization
Dự án đã được cấu hình hỗ trợ tiếng Việt trong `Web.config`:

```xml
<globalization culture="vi-VN" uiCulture="vi-VN" 
               requestEncoding="utf-8" 
               responseEncoding="utf-8" 
               fileEncoding="utf-8" />
```

## 🐛 Xử lý lỗi thường gặp

### Lỗi connection string
- Kiểm tra SQL Server đã chạy chưa
- Kiểm tra tên server và database trong connection string
- Đảm bảo Windows Authentication hoặc SQL Authentication đúng

### Lỗi thiếu cột trong database
- Chạy lại script SQL để cập nhật schema
- Hoặc cập nhật Entity Framework model

### Lỗi font chữ tiếng Việt
- Đảm bảo database sử dụng collation hỗ trợ Unicode
- Kiểm tra encoding trong Web.config

## 📄 License

Dự án này được phân phối dưới giấy phép MIT. Xem file [LICENSE](LICENSE) để biết thêm chi tiết.

## 👥 Tác giả

- **huynhloitg@gmail.com** - Dự án mẫu

## 🙏 Cảm ơn

Cảm ơn các thư viện và framework mã nguồn mở đã được sử dụng trong dự án này.

## 📞 Liên hệ

Nếu có thắc mắc hoặc cần hỗ trợ, vui lòng tạo issue hoặc liên hệ qua email.

---

**Lưu ý**: Đây là dự án mẫu, vui lòng cập nhật thông tin liên hệ và tác giả phù hợp với dự án của bạn.
