using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL.Services
{
    public class TeacherInfoService
    {
        public List<TeacherInfo> GetTeacherInfoByNumber(string number)
        {
            string sql = $"select * from Teacher_Info where [Job number]={number}";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            List<TeacherInfo> teacherInfos = new List<TeacherInfo>();
            if (sdr.Read())
            {
                teacherInfos.Add(new TeacherInfo()
                {
                    ID = (int)sdr["ID"],
                    shenfenzheng = sdr.GetString(1),
                    teacherGender = sdr.GetString(2),
                    teacherAge = sdr.GetString(3),
                    JobNumber = sdr.GetString(4),
                    teacherName = sdr.GetString(5),
                    teacherCollege = sdr.GetString(6),
                    teacherMajor = sdr.GetString(7),
                    teacherOffice = sdr.GetString(8),
                    teacherPhoneNumber = sdr.GetString(9),
                    t_pwd = sdr.GetString(10)
                });
            }
            return teacherInfos;
        }
    }
}
