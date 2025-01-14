<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="Lab01.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            height: 38px;
            width: 545px;
        }
        .auto-style4 {
            height: 32px;
            text-align: center;
            color: #FFFFFF;
            background-color: #009933;
        }
        .auto-style5 {
            text-align: center;
            height: 34px;
            color: #FFFFFF;
            background-color: #009933;
        }
        .auto-style6 {
            height: 35px;
            width: 545px;
        }
        .auto-style7 {
            width: 162px;
        }
        .auto-style8 {
            height: 38px;
            width: 162px;
        }
        .auto-style9 {
            height: 35px;
            width: 162px;
        }
        .auto-style10 {
            width: 162px;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
            width: 545px;
        }
        .auto-style12 {
            width: 545px;
        }
        .auto-style13 {
            width: 162px;
            height: 60px;
        }
        .auto-style14 {
            width: 545px;
            height: 60px;
        }
        .auto-style15 {
            width: 162px;
            height: 62px;
        }
        .auto-style16 {
            width: 545px;
            height: 62px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container w-75" >
            <table cellpadding="5" class="auto-style1" style="border: thin double #000000">
                <tr>
                    <td class="auto-style5" colspan="3" style="border: thin solid #FFFFFF"><strong>HỒ SƠ ĐĂNG KÝ</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2" style="border: thin solid #FFFFFF"><strong>Thông tin đăng nhập:</strong></td>
                    <td class="auto-style4" style="border: thin solid #FFFFFF"><strong>Hồ sơ khách hàng</strong></td>
                </tr>
                <tr>
                    <td style="border: thin none #FFFFFF" class="auto-style10">
                        <label for="txtTenDN">Tên đăng nhập:</label>
                    </td>
                    <td style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" class="auto-style11">
                        <asp:TextBox ID="txtTenDN" runat="server" CssClass="form-control" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtTenDN" Display="Dynamic" ErrorMessage="Vui lòng nhập tên đăng nhập" ForeColor="Red" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                    </td>
                    <td rowspan="12" style="border-style: none; border-color: #FFFFFF;">
                        <asp:Label ID="lbKetQua" runat="server" Font-Size="Large"></asp:Label>
                        <asp:ValidationSummary ID="vsError" runat="server" ForeColor="Red" HeaderText="Danh sách lỗi:" />
                    </td>
                </tr>
                <tr>
                    <td style="border: thin none #FFFFFF" class="auto-style15">
                        <label for="txtMK">Mật khẩu:</label>
                    </td>
                    <td style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" class="auto-style16">
                        <asp:TextBox ID="txtMK" runat="server" CssClass="form-control" TextMode="Password" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfMK" runat="server" ControlToValidate="txtMK" Display="Dynamic" ErrorMessage="Mật khẩu không được để trống" ForeColor="Red" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMK" runat="server" ControlToValidate="txtMK" Display="Dynamic" ErrorMessage="Mật khẩu phải có ít nhất 1 chữ hoa, 1 số và 1 ký tự đặc biệt" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{6,}$">!</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin none #FFFFFF" class="auto-style7">
                        <label for="txtNLMK">Nhập lại mật khẩu:</label>
                    </td>
                    <td style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" class="auto-style12">
                        <asp:TextBox ID="txtNLMK" runat="server" CssClass="form-control" TextMode="Password" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                        <asp:CompareValidator ID="cvNLMK" runat="server" ControlToCompare="txtMK" ControlToValidate="txtNLMK" Display="Dynamic" ErrorMessage="Mật khẩu nhập lại không trùng khớp" ForeColor="Red" SetFocusOnError="True">!</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" colspan="2"><strong>Thông tin cá nhân</strong></td>
                </tr>
                <tr>
                    <td style="border: thin none #FFFFFF" class="auto-style7">
                        <label for="txtHoTen">Họ tên khách hàng:</label></td>
                    <td style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" class="auto-style12">
                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtHoTen" Display="Dynamic" ErrorMessage="Vui lòng nhập họ tên" ForeColor="Red" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin none #FFFFFF" class="auto-style7">Ngày sinh:</td>
                    <td style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" class="auto-style12">
                        <asp:DropDownList ID="ddlNgay" runat="server">
                        </asp:DropDownList>
                        /<asp:DropDownList ID="ddlThang" runat="server">
                        </asp:DropDownList>
                        /<asp:DropDownList ID="ddlNam" runat="server">
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvNgay" runat="server" ControlToValidate="ddlNgay" Display="Dynamic" ErrorMessage="Vui lòng nhập ngày sinh" ForeColor="Red" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvThang" runat="server" ControlToValidate="ddlThang" Display="Dynamic" ErrorMessage="Vui lòng nhập tháng sinh" ForeColor="Red" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvNam" runat="server" ControlToValidate="ddlNam" Display="Dynamic" ErrorMessage="Vui lòng nhập năm sinh" ForeColor="Red" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="border: thin none #FFFFFF">
                        <label for="txtEmail">Email:</label></td>
                    <td class="auto-style3" style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email không hợp lệ" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">!</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin none #FFFFFF" class="auto-style7">Thu nhập:</td>
                    <td style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" class="auto-style12">
                        <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                        <asp:CompareValidator ID="cvThuNhap" runat="server" ControlToValidate="txtThuNhap" Display="Dynamic" ErrorMessage="Thu nhập phải là số" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Double">!</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin none #FFFFFF" class="auto-style9">Giới tính:</td>
                    <td style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" class="auto-style6">
                        <asp:CheckBox ID="cbGioiTinh" runat="server" Font-Size="Large" Text="&nbspNam" />
                    </td>
                </tr>
                <tr>
                    <td style="border: thin none #FFFFFF" class="auto-style13">Địa chỉ:</td>
                    <td style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" class="auto-style14">
                        <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control" TextMode="MultiLine" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDiaChi" runat="server" ControlToValidate="txtDiaChi" Display="Dynamic" ErrorMessage="Vui lòng nhập địa chỉ" ForeColor="Red" SetFocusOnError="True">!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin none #FFFFFF" class="auto-style7">Điện thoại:</td>
                    <td style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;" class="auto-style12">
                        <asp:TextBox ID="txtSDT" runat="server" CssClass="form-control" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revSDT" runat="server" ControlToValidate="txtSDT" Display="Dynamic" ErrorMessage="Số điện thoại không phù hợp" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^0\d{9}$">!</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2" style="border-style: solid; border-width: thin; border-color: #FFFFFF #000000 #FFFFFF #FFFFFF;">
                        <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" CssClass="btn btn-danger" OnClick="btnDangKy_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
