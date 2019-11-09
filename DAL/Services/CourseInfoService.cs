using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL.Services
{
    public class CourseInfoService
    {
        public List<Courseinfo> GetCourseinfos()
        {
            List<Courseinfo> courseinfos = new List<Courseinfo>();
            string sql = "select * from Course_Info";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            while (sdr.Read())
            {
                Courseinfo courseinfo = new Courseinfo()
                {
                    ID = (int)sdr["ID"],
                    coursename = (string)sdr["Course Title"],
                    coursenumber = (string)sdr["Course Number"],
                    courescategory = (string)sdr["Course Category"],
                    kcfs = (string)sdr["Way Of Investigation"],
                    hours = (string)sdr["Hours Of Studing"]
                };
                courseinfos.Add(courseinfo);
            }
            sdr.Close();
            return courseinfos;
        }

        /// <summary>
        /// 使用课程编号查找
        /// </summary>
        /// <param name="courseNumber"></param>
        /// <returns></returns>
        public List<Courseinfo> GetCourseinfoByCourseNumber(string courseNumber)
        {
            List<Courseinfo> courseinfos = new List<Courseinfo>();
            int courseNumber1 = Int32.Parse(courseNumber);
            string sql = $"select * from Course_Info where [Course Number]={courseNumber1}";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            while (sdr.Read())
            {
                Courseinfo courseinfo = new Courseinfo()
                {
                    ID = (int)sdr["ID"],
                    coursename = (string)sdr["Course Title"],
                    coursenumber = (string)sdr["Course Number"],
                    courescategory = (string)sdr["Course Category"],
                    kcfs = (string)sdr["Way Of Investigation"],
                    hours = (string)sdr["Hours Of Studying"]
                };
                courseinfos.Add(courseinfo);
            }
            sdr.Close();
            return courseinfos;
        }
    }
}
