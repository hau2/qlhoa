<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="QLHoa.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sp {
            padding: 2px;
            text-align:center;
        }
        .tensp {
            color: darkblue;
            font-size: 18px;
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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
        <ItemTemplate>
            <div class="sp">
                <asp:Image CssClass="hinh" ID="Image1" runat="server" ImageUrl='<%# "~/images/"+Eval("HinhAnh") %>' />
            <br />
            <asp:Label Text="Tên hoa: " runat="server" />
            <asp:LinkButton CssClass="tensp" ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MaHoa") %>' Text='<%# Eval("TenHoa") %>' OnClick="LinkButton2_Click"></asp:LinkButton>
            <br />
            <asp:Label Text="Giá" runat="server" />
            <asp:Label CssClass="gia" ID="Label1" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
            </div>
        </ItemTemplate>
</asp:DataList>
</asp:Content>
