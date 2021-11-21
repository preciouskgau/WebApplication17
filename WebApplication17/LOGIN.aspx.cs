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
    public partial class LOGIN : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(@"Data source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\galleryUsers.mdf;Integrated Security= True;Connect timeout=30");
        public SqlDataAdapter adapter = new SqlDataAdapter();
        public DataSet ds = new DataSet();
        public SqlDataReader reader;
        SqlCommand command;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin2_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sql = "SELECT *FROM [TableUsers] WHERE Name ='" + txtUsername.Text + "' and Password ='" + txtPassword.Text + "'";

            command = new SqlCommand(sql, conn);

            reader = command.ExecuteReader();

            if (reader.Read())
            {
                lblError.Text = "INVALID Username or Password!!!";

            }
            else
            {
                lblError.Text = "INVALID Username or Password!!!";
            }

            conn.Close();

            HttpCookie _UserRequest = new HttpCookie("UserRequests");

            _UserRequest["UserName"] = txtUsername.Text;

            Response.Redirect("gallery.aspx");
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         
        }
    }
}