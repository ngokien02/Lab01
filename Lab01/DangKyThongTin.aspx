<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="Lab01.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Đăng ký thông tin</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 170px;
            text-align: right;
            font-size: medium;
        }
        .auto-style3 {
            text-align: center;
            height: 29px;
            font-size: x-large;
            background-color: #66CCFF;
        }
        .auto-style5 {
            background-color: #66CCFF;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            text-align: left;
            font-size: medium;
            background-color: #FFFFFF;
            height: 34px;
        }
    </style>
</head>
<body>
    <div class="container w-75">
        <form id="form1" runat="server">
            <div>

                <table border="1" cellspacing="4" cellpadding="4" class="auto-style1">
                    <tr>
                        <td colspan="2" class="auto-style3"><strong><span class="auto-style5">ĐĂNG KÝ THÔNG TIN&nbsp;</span></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Họ và tên:</td>
                        <td>
                            <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Ngày sinh:</td>
                        <td>
                            <asp:TextBox ID="txtNgaySinh" runat="server" TextMode="Date" CssClass="form-control" required="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Giới tính:</td>
                        <td>
                            <asp:RadioButton ID="rdNam" runat="server" CssClass="auto-style6" Text="Nam" GroupName="gt" Checked="True" />
                            <asp:RadioButton ID="rdNu" runat="server" CssClass="auto-style6" Text="Nữ" GroupName="gt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Trình độ:</td>
                        <td>
                            <asp:DropDownList ID="ddlTrinhDo" runat="server" CssClass="form-select" required="true">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Nghề nghiệp:</td>
                        <td>
                            <asp:ListBox runat="server" CssClass="form-check" ID="lstNgheNghiep" Width="204px" required></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Hình:</td>
                        <td>
                            <asp:FileUpload ID="fileHinh" runat="server" CssClass="auto-style6" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Sở thích:</td>
                        <td>
                            <asp:CheckBoxList ID="ckbSoThich" runat="server" required="true">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center">
                            <asp:Button ID="btnGui" runat="server" Text="Gửi" CssClass="btn btn-info" OnClick="btnGui_Click" />
                            <asp:Button ID="btnTiep" runat="server" Text="Tiếp" CssClass="btn btn-danger" OnClick="btnTiep_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7" colspan="2">
                            <asp:Label ID="lbThongTin" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
</body>
</html>
