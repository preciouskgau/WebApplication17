using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using AltoHttp;
using System.IO;

namespace WebApplication17
{
    public partial class gallery : System.Web.UI.Page
    {


        public SqlConnection conn = new SqlConnection(@"Data source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\galleryUsers.mdf;Integrated Security= True;Connect timeout=30");
        public DataSet ds;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;
        SqlCommand command;
       

        protected void Page_Load(object sender, EventArgs e)
        {



        }

        public void Filling()
        {

            adapter = new SqlDataAdapter("select image from Images", conn);
            ds = new DataSet();
            adapter.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();

        }

        public void FillingOne()
        {

            adapter = new SqlDataAdapter("select image from Images where image ='" + txtview.Text + "'", conn);
            ds = new DataSet();
            adapter.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();

        }


        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string path, sql;
            int id;
            conn.Open();

            int min = 00000;
            int max = 99999;
            Random rand = new Random();
            id = rand.Next(min, max);

            DateTime date = DateTime.Now;
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(Request.PhysicalApplicationPath + "imagess/" + FileUpload1.FileName.ToString());
                lblUpload.Text = "Successfully uploaded";


                path = "imagess/" + FileUpload1.FileName.ToString();
                sql = "INSERT INTO [Images] VALUES('" + id + "','" + path.ToString() + "','" + date + "')";

                command = new SqlCommand(sql, conn);
                adapter = new SqlDataAdapter();
                adapter.InsertCommand = command;
                adapter.InsertCommand.ExecuteNonQuery();

            }
            else
            {
                lblUpload.Text = "No image was uploaded";
            }
           

            conn.Close();


        }

        protected void DataList1_ItemCommand(object sender, DataListCommandEventArgs e)
        {
           

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {




        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Filling();
        }

        protected void btnView2_Click(object sender, EventArgs e)
        {
            FillingOne();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sql = "delete from Images where image ='" + txtview.Text + "'";
            command = new SqlCommand(sql, conn);
            adapter = new SqlDataAdapter();
            adapter.DeleteCommand = command;
            adapter.DeleteCommand.ExecuteNonQuery();
            conn.Close();
            lbldelete.Text = "Image " + txtview.Text + " is permanently deleted from gallery";

        }

        protected void btnDowload_Click(object sender, EventArgs e)
        {
            string filename = txtview.Text;
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "attachment;fileName=" + filename); ;
            Response.TransmitFile(Server.MapPath(filename));
            Response.End();
        }

        private void HttpDownloader_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            
        }

        private void HttpDownloader_DownloadCompleted(object sender, EventArgs e)
        {
           
        }

        protected void btnDeleteAll_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sql = "delete from Images";
            command = new SqlCommand(sql, conn);
            adapter = new SqlDataAdapter();
            adapter.DeleteCommand = command;
            adapter.DeleteCommand.ExecuteNonQuery();
            conn.Close();
            lbldelete.Text = "All you images are permanently deleted from gallery";

        }
    }
}