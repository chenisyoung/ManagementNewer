using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Services
{
    public class SaoService
    {
        public int GetChoose()
        {
            string sql = "select top(1) * from choose";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            // 1 为my, 2 为弹窗, 3 为弹窗后关闭, 0则不作任何动作
            int a = 0;
            if (sdr.Read())
            {
                a = sdr.GetInt32(0);
            }
            sdr.Close();
            return a;
        }
        public string GetGeyan()
        {
            Random random = new Random();
            int i = 0;
            int j = random.Next(0, 5);
            string[] gs = new string[5];
            string sql = "select top(5) * from geyan";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            while (sdr.Read())
            {
                gs[i++] = sdr.GetString(0);
            }
            sdr.Close();

            return gs[j]; //随机返回一句话
        }
        public string GetTanchuang()
        {
            string ret = "!!!";
            string sql = "select top(1) * from tanchuang";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            if (sdr.Read())
            {
                ret = sdr.GetString(0);
            }
            sdr.Close();
            return ret;
        }
        public string GetTanchuang1()
        {
            string ret = "!!!";
            string sql = "select top(5) * from tanchuang1";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            if (sdr.Read())
            {
                ret = sdr.GetString(0);
            }
            sdr.Close();
            return ret;
        }
    }
}
