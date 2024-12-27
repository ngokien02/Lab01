using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThongTin : System.Web.UI.Page
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
            ddlTrinhDo.Items.Add(new ListItem("Trung cấp", "01"));
            ddlTrinhDo.Items.Add(new ListItem("Cao đẳng", "02"));
            ddlTrinhDo.Items.Add(new ListItem("Đại học", "03"));
            ddlTrinhDo.Items.Add(new ListItem("Sau đại học", "04"));

            lstNgheNghiep.Items.Add(new ListItem("Giáo viên", "01"));
            lstNgheNghiep.Items.Add(new ListItem("Lập trình viên", "02"));
            lstNgheNghiep.Items.Add(new ListItem("Kỹ sư", "03"));
            lstNgheNghiep.Items.Add(new ListItem("Bác sĩ", "04"));
            lstNgheNghiep.Items.Add(new ListItem("Luật sư", "05"));
            lstNgheNghiep.Items.Add(new ListItem("Khác", "06"));

            ckbSoThich.Items.Add(new ListItem("Nghe nhạc", "01"));
            ckbSoThich.Items.Add(new ListItem("Xem phim", "02"));
            ckbSoThich.Items.Add(new ListItem("Học bài", "03"));
            ckbSoThich.Items.Add(new ListItem("Đọc sách", "04"));
            ckbSoThich.Items.Add(new ListItem("Chơi nhạc cụ", "05"));
            ckbSoThich.Items.Add(new ListItem("Thể thao", "06"));
        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            string kq = "<div class='h3 alert alert-info text-center mb-3'>KẾT QUẢ ĐĂNG KÝ</div>";
            kq += "<ul>";
            kq += string.Format("<li> Họ tên: <b>{0}</b>", txtHoTen.Text);
            kq += string.Format("<li> Ngày sinh: <b>{0}</b>", txtNgaySinh.Text);
            kq += string.Format("<li> Giới tính: <b>{0}</b>", rdNam.Checked ? rdNam.Text : rdNu.Text);
            kq += string.Format("<li> Trình độ: <b>{0}</b>", ddlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li> Nghề nghiệp: <b>{0}</b>", lstNgheNghiep.SelectedItem.Text);

            if (fileHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads");
                string fileName = fileHinh.FileName;
                fileHinh.SaveAs(path + "/" + fileName);
                kq += string.Format("<li> Ảnh đại diện: <img src='/uploads/{0}' width='200px'>", fileName);
            }

            string soThich = "";
            foreach (ListItem item in ckbSoThich.Items)
            {
                if (item.Selected)
                {
                    soThich += item.Text + ";";
                }
            }

            kq += string.Format("<li> Sở thích: <b>{0}</b>", soThich);
            kq += "</ul>";

            lbThongTin.Text = kq;
        }

        protected void btnTiep_Click(object sender, EventArgs e)
        {
            txtHoTen.Text = "";
            txtNgaySinh.Text = "";
            ddlTrinhDo.SelectedIndex = 0;
            lstNgheNghiep.SelectedIndex = -1;
            foreach (ListItem item in ckbSoThich.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                }
            }
            lbThongTin.Text = "";

        }
    }
}