<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="QLHoa.ChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sp {
            padding: 2px;
            display: flex;
            align-items:center;
        }
        .tensp {
            color: darkblue;
            font-size: 18px;
            font-weight: 700;
        }
        .hinh {
            width: 200px;
            height:150px;
        }
        .gia {
            font-size: 20px;
            font-weight: bold;
            color: red;
        }
        .chucnang {
            margin-top: 10px;
            display: flex;
            justify-content: center;
        }
        .chucnang * {
            margin: 0 4px;
        }
        .mota {
            color: #000;
            font-weight: 600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">

        <ItemTemplate>
            <div class="sp">
                <div>
                    <asp:Image ID="Image1" CssClass="hinh" runat="server" ImageUrl='<%# "~/images/"+Eval("HinhAnh") %>' />
                </div>
                <div>
                    <asp:Label Text="Tên hàng: " runat="server" />
                    <asp:Label ID="Label1"  CssClass="tensp" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label3"  CssClass="mota" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                    <asp:Label Text="VND" runat="server" />
                </div>
            </div>
            <div class="chucnang">
                <asp:Button ID="btnMua" runat="server" Text="Mua" />
                <asp:Button ID="btnGioHang" runat="server" Text="Xem Giỏ hàng" />
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
