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
    
    public partial class Changepwd : System.Web.UI.Page
    {
        Chapter8.BLL.AdminManage adminmanage = new Chapter8.BLL.AdminManage();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
     

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtXPwd.Text = txtXPwd.Text = txtSXPwd.Text = string.Empty;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            adminmanage.Name = txtName.Text;
            DataSet ds = adminmanage.GetAllAdminByName(adminmanage, "tb_admin");
            if (txtYPwd.Text == ds.Tables[0].Rows[0][2].ToString())
            {
                adminmanage.Pwd = txtXPwd.Text;
                adminmanage.UpdateAdmin(adminmanage);
                Response.Write("<script>alert('密码修改成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('管理员原密码输入不正确！')</script>");
            }
        }

        
    }
}