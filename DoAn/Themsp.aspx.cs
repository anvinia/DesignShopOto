using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn
{
    public partial class Themsp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload2");
            String path = Server.MapPath("~/img/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["ANH"].DefaultValue = f.FileName;
        }

        protected void ItemInserted2(object sender, FormViewInsertedEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload3");
            String path = Server.MapPath("~/img/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["ANH"].DefaultValue = f.FileName;
        }

        protected void ItemInserted3(object sender, FormViewInsertedEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload4");
            String path = Server.MapPath("~/img/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.InsertParameters["ANH"].DefaultValue = f.FileName;
        }
    }
}