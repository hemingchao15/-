using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Chapter8.webApp
{
    public partial class Books : System.Web.UI.Page
    {
        Chapter8.BLL.Books books = new BLL.Books();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetBooksInfo();
            }
        }
        private void GetBooksInfo()
        {
            DataSet ds = new DataSet();
            ds = books.GetBooksList();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}