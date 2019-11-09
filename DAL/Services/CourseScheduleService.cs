using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL.Services
{
    public class CourseScheduleService
    {
        public List<CourseSchedule> GetCourseSchedules()
        {
            string sql = "select * from Course_Schedule";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            List<CourseSchedule> courseSchedules = new List<CourseSchedule>();
            while (sdr.Read())
            {
                CourseSchedule courseSchedule = new CourseSchedule()
                {
                    ID = (int)sdr["ID"],
                    coursenumber = (string)sdr["Course Number"],
                    classnumber = (string)sdr["Classroom Number"],
                    tnumber = (string)sdr["Job number"],
                    stuclass = (string)sdr["TeachingClass"],
                    coursetime = (string)sdr["Class time"], // 上课时间
                };
                courseSchedules.Add(courseSchedule);
            }
            sdr.Close();
            return courseSchedules;
        }

        public List<CourseSchedule> GetCourseScheduleByCourseNumber(string courseNumber)
        {
            string sql = $"select * from Course_Schedule where [Course Number]='{courseNumber}'";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            List<CourseSchedule> courseSchedules = new List<CourseSchedule>();
            while (sdr.Read())
            {
                CourseSchedule courseSchedule = new CourseSchedule()
                {
                    ID = (int)sdr["ID"],
                    coursenumber = (string)sdr["Course Number"],
                    classnumber = (string)sdr["Classroom Number"],
                    tnumber = (string)sdr["Job number"],
                    stuclass = (string)sdr["TeachingClass"],
                    coursetime = (string)sdr["Class time"], // 上课时间
                };
                courseSchedules.Add(courseSchedule);
            }
            sdr.Close();
            return courseSchedules;
        }

        public List<CourseSchedule> GetCourseScheduleByClassNumber(string classNumber)
        {
            string sql = $"select * from Course_Schedule where [Classroom Number]='{classNumber}'";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            List<CourseSchedule> courseSchedules = new List<CourseSchedule>();
            while (sdr.Read())
            {
                CourseSchedule courseSchedule = new CourseSchedule()
                {
                    ID = (int)sdr["ID"],
                    coursenumber = (string)sdr["Course Number"],
                    classnumber = (string)sdr["Classroom Number"],
                    tnumber = (string)sdr["Job number"],
                    stuclass = (string)sdr["TeachingClass"],
                    coursetime = (string)sdr["Class time"], // 上课时间
                };
                courseSchedules.Add(courseSchedule);
            }
            sdr.Close();
            return courseSchedules;
        }

        public List<CourseSchedule> GetCourseScheduleByTeacherNumber(string teacherNumber)
        {
            string sql = $"select * from Course_Schedule where [Job number]='{teacherNumber}'";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            List<CourseSchedule> courseSchedules = new List<CourseSchedule>();
            while (sdr.Read())
            {
                CourseSchedule courseSchedule = new CourseSchedule()
                {
                    ID = (int)sdr["ID"],
                    coursenumber = (string)sdr["Course Number"],
                    classnumber = (string)sdr["Classroom Number"],
                    tnumber = (string)sdr["Job number"],
                    stuclass = (string)sdr["TeachingClass"],
                    coursetime = (string)sdr["Class time"], // 上课时间
                };
                courseSchedules.Add(courseSchedule);
            }
            sdr.Close();
            return courseSchedules;
        }
        public List<CourseSchedule> GetCourseScheduleByStuClass(string stuClass)
        {
            string sql = $"select * from Course_Schedule where [TeachingClass]='{stuClass}'";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            List<CourseSchedule> courseSchedules = new List<CourseSchedule>();
            while (sdr.Read())
            {
                CourseSchedule courseSchedule = new CourseSchedule()
                {
                    ID = (int)sdr["ID"],
                    coursenumber = (string)sdr["Course Number"],
                    classnumber = (string)sdr["Classroom Number"],
                    tnumber = (string)sdr["Job number"],
                    stuclass = (string)sdr["TeachingClass"],
                    coursetime = (string)sdr["Class time"], // 上课时间
                };
                courseSchedules.Add(courseSchedule);
            }
            sdr.Close();
            return courseSchedules;
        }
        public List<CourseSchedule> GetCourseScheduleByTime(string time)
        {
            string sql = $"select * from Course_Schedule where [Class time]='{time}'";
            SqlDataReader sdr = SqlHelper.GetAllResult(sql);
            List<CourseSchedule> courseSchedules = new List<CourseSchedule>();
            while (sdr.Read())
            {
                CourseSchedule courseSchedule = new CourseSchedule()
                {
                    ID = (int)sdr["ID"],
                    coursenumber = (string)sdr["Course Number"],
                    classnumber = (string)sdr["Classroom Number"],
                    tnumber = (string)sdr["Job number"],
                    stuclass = (string)sdr["TeachingClass"],
                    coursetime = (string)sdr["Class time"], // 上课时间
                };
                courseSchedules.Add(courseSchedule);
            }
            sdr.Close();
            return courseSchedules;
        }

    }
}
