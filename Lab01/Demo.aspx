<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="Lab01.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nhập họ tên:
            <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
            <asp:Button ID="btnGui" runat="server" Text="Gửi" OnClick="btnGui_Click" />
            <br />
            <asp:Label ID="lbChao" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>