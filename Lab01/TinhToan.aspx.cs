using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCong_Click(object sender, EventArgs e)
        {
            try
            {
                double hsa = Convert.ToDouble(txtA.Text);
                double hsb = Convert.ToDouble(txtB.Text);
                double kq = hsa + hsb;
                txtKQ.Text = kq.ToString();
            }
            catch
            {
                lbError.Text = "Vui lòng nhập đúng định dạng!";
            }
        }

        protected void btnTru_Click(object sender, EventArgs e)
        {
            try
            {
                double hsa = Convert.ToDouble(txtA.Text);
                double hsb = Convert.ToDouble(txtB.Text);
                double kq = hsa - hsb;
                txtKQ.Text = kq.ToString();
            }
            catch
            {
                lbError.Text = "Vui lòng nhập đúng định dạng!";
            }
        }

        protected void btnNhan_Click(object sender, EventArgs e)
        {
            try
            {
                double hsa = Convert.ToDouble(txtA.Text);
                double hsb = Convert.ToDouble(txtB.Text);
                double kq = hsa * hsb;
                txtKQ.Text = kq.ToString();
            }
            catch
            {
                lbError.Text = "Vui lòng nhập đúng định dạng!";
            }
        }

        protected void btnChia_Click(object sender, EventArgs e)
        {
            try
            {
                double hsa = Convert.ToDouble(txtA.Text);
                double hsb = Convert.ToDouble(txtB.Text);
                double kq = hsa / hsb;
                txtKQ.Text = kq.ToString();
            }
            catch
            {
                lbError.Text = "Vui lòng nhập đúng định dạng!";
            }
        }
    }
}