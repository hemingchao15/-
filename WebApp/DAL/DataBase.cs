using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Chapter8.DAL
{
    public class DataBase
    {
        private SqlConnection con;
        #region 打开数据库连接
        private void Open()
        {
            if (con == null)
            {
                con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
            }
            try
            {
                if (con.State == System.Data.ConnectionState.Closed)
                    con.Open();
            }
            catch (System.Data.SqlClient.SqlException E)
            {
                this.Close();
                throw new Exception(E.Message);
            }
        }
        #endregion
        #region 关闭连接
        public void Close()
        {
            if (con != null)
            {
                con.Close();
            }
        }
        #endregion
        #region 释放数据库连接资源
        public void Dispose()
        {
            if (con != null)
            {
                con.Dispose();
                con = null;
            }
        }
        #endregion
        public DataSet Query(string SQLString)
        {
            DataSet ds = new DataSet();
            try
            {
                Open();
                SqlDataAdapter command = new SqlDataAdapter(SQLString, con);
                command.Fill(ds, "ds");
                Close();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                throw new Exception(ex.Message);
            }
            return ds;
        }
            #region 传入参数并且转换为 SqlParameter 类型
            public SqlParameter MakeInParm(string ParamName,SqlDbType DbType,int Size,object Value)
           {
                  SqlParameter Param;
                  if (Size > 0)
                  {
                      Param = new SqlParameter(ParamName, DbType, Size);
                  }
                  else
                  {
                      Param = new SqlParameter(ParamName, DbType);
                  }
                  Param.Direction = ParameterDirection.Input;
                  if (Value != null)
                  {
                      Param.Value = Value;
                  }
                  return Param;
           }
            #endregion
            #region 将命令文本添加到 Sqlcommand
            private SqlCommand CreateCommand(string procName, SqlParameter[] prams)
            { 
                this.Open();
                SqlCommand cmd=new SqlCommand(procName,con);
                cmd.CommandType = CommandType.Text;
                if(prams!=null)
                {
                    foreach (SqlParameter parameter in prams)
                    {
                        cmd.Parameters.Add(parameter);
                    }
                }
                return cmd;
            }
            #endregion
            #region 将命令文本添加到 SqlDataAdapter
            private SqlDataAdapter CreateDataAdapter(string procName, SqlParameter[] prams)
            {
                this.Open();
                SqlDataAdapter dap = new SqlDataAdapter(procName,con);
                dap.SelectCommand.CommandType = CommandType.Text;
                if (prams != null)
                {
                    foreach (SqlParameter Parameter in prams)
                    {
                        dap.SelectCommand.Parameters.Add(Parameter);
                    }
                }
                return dap;

            }
            #endregion
            #region 执行参数命令文本
            public DataSet RunProcReturn(string p, SqlParameter[] prams, string tbName)
            {
                SqlDataAdapter dap = CreateDataAdapter(p, prams);
                DataSet ds = new DataSet();
                dap.Fill(ds,tbName);
                this.Close();
                return ds;
            }
            #endregion
            #region 执行参数命令文本
            public int RunProc(string procName, SqlParameter[] prams)
            {
                SqlCommand cmd = CreateCommand(procName,prams);
                int i = cmd.ExecuteNonQuery();
                this.Close();
                return i;
            }
        #endregion



           
    }
}

