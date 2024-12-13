<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="Lab01.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 55px;
            text-align: center;
            font-size: x-large;
            background-color: #33CCFF;
        }
        #Text1 {
            width: 261px;
        }
        #Text2 {
            width: 260px;
        }
        #Text2 {
            width: 261px;
        }
        .auto-style2 {
            width: 211px;
            text-align: right;
            font-size: large;
        }
        .auto-style3 {
            width: 50%;
            height: 121px;
        }
        .auto-style4 {
            color: #FF0000;
        }
        .auto-style5 {
            width: 390px;
        }
        .auto-style6 {
            width: 211px;
            text-align: right;
            font-size: large;
            height: 40px;
        }
        .auto-style7 {
            width: 390px;
            height: 40px;
        }
        .auto-style8 {
            text-align: center;
            font-size: large;
            height: 40px;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: medium;
            background-color: #66FFFF;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
            background-color: #FF0066;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
            background-color: #660066;
        }
        .auto-style13 {
            font-size: large;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table align="center" style="border: thin solid #0000FF; font-family: Arial, Helvetica, sans-serif; font-size: 18px;" class="auto-style3">
                <tr>
                    <td class="auto-style1" colspan="2"><strong><span class="auto-style4">Tính toán đơn giản</span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">Nhập số a:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtA" runat="server" Height="30px" Width="221px" CssClass="auto-style13"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Nhập số b:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtB" runat="server" Height="30px" Width="221px" CssClass="auto-style13"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <strong>
                        <asp:Button ID="btnCong" runat="server" Text="Cộng" CssClass="auto-style10" Height="40px" OnClick="btnCong_Click" Width="15%" />
                        <asp:Button ID="btnTru" runat="server" Text="Trừ" CssClass="auto-style11" Height="40px" OnClick="btnTru_Click" Width="15%" />
                        <asp:Button ID="btnNhan" runat="server" Text="Nhân" CssClass="auto-style12" Height="40px" OnClick="btnNhan_Click" Width="15%" />
                        <asp:Button ID="btnChia" runat="server" Text="Chia" CssClass="auto-style9" Height="40px" OnClick="btnChia_Click" Width="15%" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Kết quả:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtKQ" runat="server" Height="30px" Width="221px" CssClass="auto-style13"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <asp:Label ID="lbError" runat="server" Text="" CssClass="auto-style4"></asp:Label>
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
