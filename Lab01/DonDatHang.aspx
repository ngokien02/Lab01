<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<head runat="server">
    <title>Đơn đặt hàng</title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            width: 1168px;
        }
        .auto-style2 {
            width: 405px;
            height: 136px;
        }
        .auto-style3 {
            text-align: right;
            width: 405px;
        }
        .auto-style4 {
            text-align: right;
            width: 405px;
            height: 24px;
        }
        .auto-style5 {
            text-align: left;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
            font-size: x-large;
            background-color: #99FF99;
        }
        .auto-style7 {
            text-align: right;
            width: 405px;
            height: 48px;
        }
        .auto-style8 {
            text-align: left;
            height: 48px;
        }
        .auto-style9 {
            height: 136px;
        }
        .auto-style10 {
            width: 75%;
            height: 411px;
        }
        .auto-style11 {
            height: 58px;
        }
        .auto-style12 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #CC3300;
            font-size: large;
        }
    </style>
    </head>

<body>
    <div class="auto-style1 container" style="text-align: center; background-color: #FFFFFF">
        <form id="form1" runat="server">

            <table class="auto-style10" align="center" cellpadding="10px">
                <tr>
                    <td class="auto-style6" colspan="2" style="border: thin solid #008000"><strong>ĐƠN ĐẶT HÀNG</strong></td>
                </tr>
                <tr>
                    <td class="auto-style7" style="border: thin solid #008000">Khách hàng:&nbsp;&nbsp; </td>
                    <td class="auto-style8" style="border: thin solid #008000">
                        <asp:TextBox ID="txtKhachHang" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="border: thin solid #008000">Địa chỉ:&nbsp;&nbsp; </td>
                    <td class="text-start" style="border: thin solid #008000">
                        <asp:TextBox ID="txtDiaChi" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="border: thin solid #008000">Mã số thuế:&nbsp;&nbsp; </td>
                    <td class="auto-style5" style="border: thin solid #008000">
                        <asp:TextBox ID="txtThue" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border: thin solid #008000">Chọn các loại bánh sau:<br />
                        <asp:DropDownList ID="ddlLoaiBanh" runat="server" Width="324px" style="margin-bottom:10px;">
                        </asp:DropDownList>
                        <br />
                        Số lượng:
                        <asp:TextBox ID="txtSoLuong" runat="server" Width="112px"></asp:TextBox>
&nbsp;cái<br />
                        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="&gt;" Width="33px" ToolTip="Đặt bánh" />
                    </td>
                    <td class="auto-style9" style="border: thin solid #008000">Danh sách bánh được đặt:<br />
                        <asp:ListBox ID="lbxBanhDcDat" runat="server" Width="312px"></asp:ListBox>
                        <br />
&nbsp;<asp:ImageButton ID="btnXoa" runat="server" Height="29px" OnClick="btnXoa_Click" Width="35px" ImageUrl="~/Images/delete.gif" ToolTip="Xóa bánh đã đặt" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="border: thin solid #008000">
                        <asp:Button ID="btnIn" runat="server" CssClass="auto-style12" Text="In đơn đặt hàng" Width="285px" OnClick="btnIn_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lbHoaDon" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </form>
    </div>
</body>
</html>
