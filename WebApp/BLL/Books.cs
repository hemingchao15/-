using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace Chapter8.BLL
{
    public class Books
    {
        Chapter8.DAL.DataBase data = new DAL.DataBase();
        public DataSet GetBooksList()
        {
            DataSet ds = new DataSet();
            string sql = "select*from tb_bookinfo";
            ds = data.Query(sql);
            return ds;
        }
     
       
    }
}
