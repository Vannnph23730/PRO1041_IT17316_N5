USE [master]
GO
/****** Object:  Database [PRO1041_IT17316_N5]    Script Date: 14/11/2022 7:08:21 CH ******/
CREATE DATABASE [PRO1041_IT17316_N5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRO1041_IT17316_N5', FILENAME = N'C:\Program Files\Microsoft SQL Server 2019 Express\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRO1041_IT17316_N5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRO1041_IT17316_N5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server 2019 Express\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRO1041_IT17316_N5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRO1041_IT17316_N5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET  MULTI_USER 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET QUERY_STORE = OFF
GO
USE [PRO1041_IT17316_N5]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[MaCL] [varchar](7) NOT NULL,
	[TenCL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaCL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [varchar](7) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[MaNV] [varchar](7) NOT NULL,
	[MaNCC] [varchar](7) NOT NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](7) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[TrangThai] [nvarchar](20) NOT NULL,
	[MaNV] [varchar](7) NOT NULL,
	[MaKH] [varchar](7) NOT NULL,
	[MaKM] [varchar](7) NOT NULL,
	[MaHDCT] [varchar](7) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[MaHDCT] [varchar](7) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[MaMH] [varchar](7) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](7) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[MaTK] [varchar](7) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [varchar](7) NOT NULL,
	[MucKM] [float] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoai] [varchar](7) NOT NULL,
	[MaNCC] [varchar](7) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[MaLuong] [varchar](7) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_Luong] PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[MaMH] [varchar](7) NOT NULL,
	[TenMH] [nvarchar](120) NOT NULL,
	[MaLoai] [varchar](7) NOT NULL,
	[MaCL] [varchar](7) NOT NULL,
	[Size] [varchar](5) NOT NULL,
	[DonGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Mota] [nvarchar](255) NULL,
	[DanhGia] [nvarchar](100) NULL,
 CONSTRAINT [PK_MatHang] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](7) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SDT] [varchar](11) NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](7) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[MaLuong] [varchar](7) NOT NULL,
	[MaTK] [varchar](7) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 14/11/2022 7:08:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [varchar](7) NOT NULL,
	[Email] [nvarchar](25) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[LoaiTK] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_NhaCungCap]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HoaDonChiTiet] FOREIGN KEY([MaHDCT])
REFERENCES [dbo].[HoaDonChiTiet] ([MaHDCT])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HoaDonChiTiet]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhuyenMai] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhuyenMai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TaiKhoan]
GO
ALTER TABLE [dbo].[LoaiHang]  WITH CHECK ADD  CONSTRAINT [FK_LoaiHang_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[LoaiHang] CHECK CONSTRAINT [FK_LoaiHang_NhaCungCap]
GO
ALTER TABLE [dbo].[MatHang]  WITH CHECK ADD  CONSTRAINT [FK_MatHang_ChatLieu] FOREIGN KEY([MaCL])
REFERENCES [dbo].[ChatLieu] ([MaCL])
GO
ALTER TABLE [dbo].[MatHang] CHECK CONSTRAINT [FK_MatHang_ChatLieu]
GO
ALTER TABLE [dbo].[MatHang]  WITH CHECK ADD  CONSTRAINT [FK_MatHang_LoaiHang] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiHang] ([MaLoai])
GO
ALTER TABLE [dbo].[MatHang] CHECK CONSTRAINT [FK_MatHang_LoaiHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Luong] FOREIGN KEY([MaLuong])
REFERENCES [dbo].[Luong] ([MaLuong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Luong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [PRO1041_IT17316_N5] SET  READ_WRITE 
GO
