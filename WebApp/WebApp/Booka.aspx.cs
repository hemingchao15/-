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
    public partial class Booka : System.Web.UI.Page
    {
        Chapter8.BLL.Booka books = new BLL.Booka();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetBookaInfo();
            }

        }
        private void GetBookaInfo()
        {
            DataSet ds = new DataSet();
            ds = books.GetBookaList();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}