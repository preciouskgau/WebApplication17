using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication17
{
    public partial class gallery : System.Web.UI.Page
    {
        int id = 1;
        public SqlConnection conn = new SqlConnection(@"Data source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\galleryUsers.mdf;Integrated Security= True;Connect timeout=30");
        public DataSet ds;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;
        SqlCommand command;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string path,sql;
            id = id + 1;
            DateTime date = DateTime.Now;
            conn.Open();
            if (FileUpload1.HasFile)
            {
              
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "/Image/" + FileUpload1.FileName);           

            }
            path = FileUpload1.FileName;
            sql = "INSERT INTO [Images] VALUES('"+id+"','"+path+"','"+date+"')";

            command = new SqlCommand(sql, conn);
            adapter = new SqlDataAdapter();           
            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            conn.Close();

           
        }
    }
}