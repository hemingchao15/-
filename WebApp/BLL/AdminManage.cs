using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace Chapter8.BLL
{
    public class AdminManage
    {
        Chapter8.DAL.DataBase data = new Chapter8.DAL.DataBase();
        #region 定义管理员信息-数据结构
        private string id = "";
        private string name= "";
        private string pwd = "";
        public string ID
        {
            get { return id; }
            set { id = value; }
        }
        public string Name
        {
            get { return name; }
            set { name = value; }
 
        }
        public string Pwd
        {
            get { return pwd; }
            set { pwd = value; }

        }
        #endregion
        #region 修改管理员信息
        public int UpdateAdmin(AdminManage adminmanage)
        {
            SqlParameter[] prams={
                                     data.MakeInParm("@name",SqlDbType.VarChar,50,adminmanage.Name),
                                     data.MakeInParm("@Pwd",SqlDbType.VarChar,30,adminmanage.Pwd),};
            return (data.RunProc("update tb_admin set pwd=@pwd where name=@name", prams));
        }
        #endregion
        #region 查询管理员信息
        public DataSet GetAllAdminByName(AdminManage adminmanage, string tbName)
        {
            SqlParameter[] prams ={
                                    data.MakeInParm("@name",SqlDbType.VarChar,50,adminmanage.Name+"%"), 
                                  };
            return (data.RunProcReturn("select*from tb_admin where name like @name", prams, tbName));

        }
        #endregion
    }
}
