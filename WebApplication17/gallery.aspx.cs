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
       
        public SqlConnection conn = new SqlConnection(@"Data source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\galleryUsers.mdf;Integrated Security= True;Connect timeout=30");
        public DataSet ds;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;
        SqlCommand command;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            command = conn.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "SELECT image FROM Images";
            command.ExecuteNonQuery();
            DataTable dataTable = new DataTable();
            adapter = new SqlDataAdapter(command);
            adapter.Fill(dataTable);
            DataList1.DataSource = dataTable;
            DataList1.DataBind();
            conn.Close();

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string path,sql;
            int id;
            conn.Open();
          
            int min = 00000;
            int max = 99999;
            Random rand = new Random();
            id = rand.Next(min, max);
          
            DateTime date = DateTime.Now;
            if (FileUpload1.HasFile)
            {
              
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "/imagess/" + FileUpload1.FileName.ToString());           

            }
            path = "imagess/" + FileUpload1.FileName.ToString();
            sql = "INSERT INTO [Images] VALUES('"+id+"','"+path.ToString()+"','"+date+"')";

            command = new SqlCommand(sql, conn);
            adapter = new SqlDataAdapter();           
            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            conn.Close();

           
        }
    }
}