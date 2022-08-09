using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace DoAn
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox6.Text = TextBox2.Text;
            TextBox7.Text = TextBox3.Text;
            TextBox8.Text = TextBox4.Text;
            TextBox9.Text = TextBox5.Text;

            //String str = "Data Source = DESKTOP-0M7P8F7\\KIEN123;Intial Catalog=DOAN; User ID=sa; Password=123";
            ////Response.Write(str);
            //SqlConnection cn = new SqlConnection(str);
            //cn.Open();
            //string them = "insert into ThanhVien values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            //SqlCommand m = new SqlCommand();
            //m.Connection = cn;
            //m.CommandText = them;

            //int rs = m.ExecuteNonQuery();
            //if (rs == 1)
            //    TextBox10.Text = " Da Them ";
            //cn.Close();  
        }

    }
}