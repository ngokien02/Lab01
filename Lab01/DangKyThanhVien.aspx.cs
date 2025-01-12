using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            ddlNgay.Items.Add(new ListItem("--chọn ngày--"));
            for (int i = 1; i <= 31; i++)
            {
                ddlNgay.Items.Add(new ListItem(i.ToString()));
            }

            ddlThang.Items.Add(new ListItem("--chọn tháng--"));
            for (int i = 1; i <= 12; i++)
            {
                ddlThang.Items.Add(new ListItem(i.ToString()));
            }

            ddlNam.Items.Add(new ListItem("--chọn năm--"));
            for (int i = 1950; i <= 2007; i++)
            {
                ddlNam.Items.Add(new ListItem(i.ToString()));
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string kq = "<ul style='color:blue;'>Thông tin khách hàng:";

            kq += $"<li>Họ tên: { txtHoTen.Text } </li>";
            kq += $"<li>Ngày sinh: {ddlNgay.Text} / { ddlThang.Text } / { ddlNam.Text } </li>";
            kq += $"<li>Email: {txtEmail.Text} </li>";
            kq += $"<li>Thu nhập: {txtThuNhap.Text} </li>";
            kq += $"<li>Giới tính: { (cbGioiTinh.Checked ? "Nam" : "Nữ") } </li>";
            kq += $"<li>Địa chỉ: {txtDiaChi.Text} </li>";
            kq += $"<li>Sđt: {txtSDT.Text} </li>";

            lbKetQua.Text = kq;
        }
    }
}