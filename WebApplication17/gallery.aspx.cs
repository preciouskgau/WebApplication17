using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace WebApplication17
{
    public partial class gallery : System.Web.UI.Page
    {
        FileUpload upload;
        public SqlConnection conn = new SqlConnection(@"Data source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\galleryUsers.mdf;Integrated Security= True;Connect timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string path;
            if(upload.HasFile)
            {
                upload.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + " Image/" + upload.FileName);
            }
            path = upload.FileName;
            SqlCommand command = new SqlCommand("insert into pic values('"+path+"')",conn);
            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();


        }
    }
}