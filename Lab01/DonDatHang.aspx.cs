using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            ddlLoaiBanh.Items.Add(new ListItem("Bánh Croissant bơ", "01"));
            ddlLoaiBanh.Items.Add(new ListItem("Bánh bò nướng", "02"));
            ddlLoaiBanh.Items.Add(new ListItem("Patés chauds", "03"));
            ddlLoaiBanh.Items.Add(new ListItem("Hamburger", "04"));
        }

        protected void btnXoa_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = lbxBanhDcDat.Items.Count - 1; i >= 0; i--)
            {
                if (lbxBanhDcDat.Items[i].Selected)
                {
                    lbxBanhDcDat.Items.RemoveAt(i);
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                string loaiBanh = ddlLoaiBanh.SelectedItem.Text;
                int soluong = int.Parse(txtSoLuong.Text);
                lbxBanhDcDat.Items.Add(string.Format("{0} ({1})", loaiBanh, soluong));
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string kq = "<div style='color: red;'>";
            kq += "<div class='h3 text-center mt-3 '>HOÁ ĐƠN MẶT HÀNG</div>";
            kq += "<div class='border p-2 '>";
            //thu thập thông tin hoá đơn gửi từ client
            kq += $"<b>Khách hàng</b>: <i>{txtKhachHang.Text}</i> <br>";
            kq += $"<b>Địa chỉ:</b>: <i>{txtDiaChi.Text}</i> <br>";
            kq += $"<b>Mã số thuế:</b>: <i>{txtThue.Text}</i> <br>";
            kq += "<b>Đặt các loại bánh sau:</b> <br>";

            kq += "<table class='table table-bordered'>";
            foreach (ListItem item in lbxBanhDcDat.Items)
            {
                string data = item.Text;
                string[] arr = data.Split(new char[] { '(', ')' });

                kq += $"<tr><td style='color: red;'>{arr[0]}</td><td style='color: red;'>{arr[1]}</td></tr>";

            }

            kq += "</table>";
            kq += "</div>";
            //Gửi thông tin hoá đơn về client
            lbHoaDon.Text = kq;
        }
    }
}