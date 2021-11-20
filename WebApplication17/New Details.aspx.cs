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
    public partial class New_Details : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(@"Data source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\galleryUsers.mdf;Integrated Security= True;Connect timeout=30");
        public SqlDataAdapter adapter = new SqlDataAdapter();
        public DataSet ds = new DataSet();
        public SqlDataReader reader;
        SqlCommand command;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnNewSubmit_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sql = "UPDATE [TableUsers] SET Username = '" + txtNewUsername.Text + "',Password = '" + txtNewPassword.Text + "',ConfirmPass = '" + txtConfirmPass.Text + "' WHERE Id = '" + txtID.Text + "'";
            command = new SqlCommand(sql, conn);
            adapter.UpdateCommand = command;
            adapter.UpdateCommand.ExecuteNonQuery();
            conn.Close();
            lblAlert.Text = "New details Successfully submitted!";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LOGIN.aspx");
        }
    }
}