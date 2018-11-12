<%@ Page Title="" Language="C#" MasterPageFile="~/NguoiDung/MasterPageDanhMuc.master" AutoEventWireup="true" CodeFile="DanhSachSach.aspx.cs" Inherits="NguoiDung_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DanhMuc" Runat="Server">
    <h1>Danh sách sách</h1>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="ChiTietSach.aspx">Chi tiết sách</asp:LinkButton>
    </p>
</asp:Content>
