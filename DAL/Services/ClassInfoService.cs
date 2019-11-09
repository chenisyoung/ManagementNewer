using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL.Services
{
    public class ClassInfoService
    {
        public List<ClassInfo> GetClassInfos()
        {
            List<ClassInfo> classInfos = new List<ClassInfo>();
            string sql = "select * from Classroom_Info";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            while (sdr.Read())
            {
                ClassInfo classInfo = new ClassInfo()
                {
                    ID = (int)sdr["ID"],
                    classnum = (string)sdr["Classroom Number"],
                    classaddress = (string)sdr["Classroom location"],
                    classCapacity = (int)sdr["Capacity"],
                    classmutilmedia = (string)sdr["Multimedia Situation"]
                };
                classInfos.Add(classInfo);
            }
            sdr.Close();
            return classInfos;
        }

        public List<ClassInfo> GetClassInfoByClassNumber(string classNumber)
        {
            List<ClassInfo> classInfos = new List<ClassInfo>();
            string sql = "select * from Classroom_Info where Classroom Number={classNumber}"; 
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            while (sdr.Read())
            {
                ClassInfo classInfo = new ClassInfo()
                {
                    ID = (int)sdr["ID"],
                    classnum = (string)sdr["Classroom_Number"],
                    classaddress = (string)sdr["Classroom location"],
                    classCapacity = (int)sdr["Capacity"],
                    classmutilmedia = (string)sdr["Multimedia Situation"]
                };
                classInfos.Add(classInfo);
            }
            sdr.Close();
            return classInfos;
        }
    }
}
