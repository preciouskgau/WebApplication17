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
    public partial class MoreDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie _UserRequest = Request.Cookies["UserRequests"];
            if (_UserRequest != null)
            {
               // TextBox1.Text = _UserRequest["Id"];
                //TextBox2.Text = _UserRequest["Date"];
                //Image1.ImageUrl = _UserRequest["Image"];
            }
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
           
            

        }

     
    }
}