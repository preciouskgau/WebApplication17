using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;


namespace WebApplication17
{
    public partial class MoreDetails : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(@"Data source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\galleryUsers.mdf;Integrated Security= True;Connect timeout=30");
        public DataSet ds;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;
        SqlCommand command;

        protected void Page_Load(object sender, EventArgs e)
        {



            DataFill();
           

        }

        protected void btnView_Click(object sender, EventArgs e)
        {
           
            

        }

        private void DataFill()
        {
            
            command = new SqlCommand("select * from Images", conn);
            conn.Open();
            reader = command.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton linkDownload = sender as LinkButton;
            GridViewRow gridViewRow = linkDownload.NamingContainer as GridViewRow;
            string downloadfile = GridView1.DataKeys[gridViewRow.RowIndex].Value.ToString();
            Response.ContentType = "Image/jpg";
            Response.AddHeader("content-disposition", "attachment;fileName=\""+downloadfile+"\"");
            Response.TransmitFile(Server.MapPath(downloadfile));
            Response.End();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton linkDelete = sender as LinkButton;
            GridViewRow gridViewRow = linkDelete.NamingContainer as GridViewRow;
            string Deletefile = GridView1.DataKeys[gridViewRow.RowIndex].Value.ToString();
            conn.Open();
            command.CommandText = "delete from [Images] where Id=" + Deletefile;
            command.Connection = conn;
            command.ExecuteNonQuery();
            DataFill();
            conn.Close();

           
           
        }
    }
}