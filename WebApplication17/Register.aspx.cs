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
    public partial class Register : System.Web.UI.Page
    {
        string Name, Surname,Password, ConfirmPass, Username, Email;
        int Id;
      

        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        string connString = @"Data source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\galleryUsers.mdf;Integrated Security= True;Connect timeout=30";
        public SqlConnection conn;
        public SqlConnection conn2;
        public DataSet ds;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;
        SqlCommand command;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int.TryParse(txtRegID.Text,out Id);
            Name = txtRegName.Text;
            Surname = txtRegSurname.Text;
            Username = txtRegUsername.Text;
            Email = txtRegEmail.Text;
            Password = txtRegPassword.Text;
            ConfirmPass = txtRegConfirm.Text;

            conn = new SqlConnection(connString);
            conn2 = new SqlConnection(connString);
            conn.Open();
            string sql = "SELECT *FROM [TableUsers] WHERE Name ='" + txtRegName.Text + "' and Password ='" + txtRegPassword.Text + "'";
            command = new SqlCommand(sql, conn);
            reader = command.ExecuteReader();
            if (reader.Read())
            {
              
               
               

                lblRegError.Text = "USER ALREADY EXISTS!!!";
                conn.Close();

            }
            else
            {
                conn.Close();
                conn2.Open();
                string sql2 = @"INSERT INTO [TableUsers] VALUES('" + Id + "','" + Name + "','" + Surname + "','" + Username + "','" + Password + "','" + ConfirmPass + "','" + Email + "')";

                adapter = new SqlDataAdapter();
                command = new SqlCommand(sql2, conn2);
                adapter.InsertCommand = command;
                adapter.InsertCommand.ExecuteNonQuery();
                conn2.Close();

                lblRegError.Text = "USER SUCCESSFULLY CREATED!!!";

            }
          

        }
    }
}