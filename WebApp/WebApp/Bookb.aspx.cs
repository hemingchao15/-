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
    public partial class Bookb : System.Web.UI.Page
    {
        Chapter8.BLL.Bookb bookb = new BLL.Bookb();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetBookbInfo();
            }
        }
        private void GetBookbInfo()
        {
            DataSet ds = new DataSet();
            ds = bookb.GetBookbList();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}