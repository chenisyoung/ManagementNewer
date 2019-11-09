using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DAL.Services;
using Model;

namespace BLL
{
    public static class GetGerenKebiao
    {
        /// <summary>
        /// 查询个人课表
        /// </summary>
        /// <param name="stuClass"></param>
        /// <returns></returns>
        public static List<StuKebiao> GetStuKebiao(string stuClass)
        {
            //查询多个表的数据
            List<StuKebiao> kbs = new List<StuKebiao>();

            CourseInfoService courseInfoService = new CourseInfoService();
            TeacherInfoService teacherInfoService = new TeacherInfoService();
            CourseScheduleService cs = new CourseScheduleService();

            List<CourseSchedule> courseSchedules = cs.GetCourseScheduleByStuClass(stuClass);

            foreach (var item in courseSchedules)
            {
                string courseName = courseInfoService.GetCourseinfoByCourseNumber(item.coursenumber)[0].coursename;
                string teacherName = teacherInfoService.GetTeacherInfoByNumber(item.tnumber)[0].teacherName;
                StuKebiao kebiao = new StuKebiao()
                {
                    CourseName = courseName,
                    CourseNumber = item.coursenumber,
                    ClassNumber = item.classnumber,
                    Course_shijian = item.coursetime,
                    Teacher_name = teacherName
                };
                kbs.Add(kebiao);

            }
            return kbs;
        }
        public static List<TeacherKebiao> GetTeacherKebiao(string JobNumber)
        {
            List<TeacherKebiao> kbs = new List<TeacherKebiao>();
            CourseInfoService courseInfoService = new CourseInfoService();

            CourseScheduleService cs = new CourseScheduleService();
            List<CourseSchedule> schedules = cs.GetCourseScheduleByTeacherNumber(JobNumber);
            for (int i = 0; i < schedules.Count; i++)
            {
                string courseName = courseInfoService.GetCourseinfoByCourseNumber(schedules[i].coursenumber)[0].coursename;

                TeacherKebiao kebiao = new TeacherKebiao()
                {
                    CourseName = courseName,
                    CourseNumber = schedules[i].coursenumber,
                    ClassNumber = schedules[i].classnumber,
                    Course_shijian = schedules[i].coursetime
                };
                kbs.Add(kebiao);
            }
            return kbs;
        }
    }
}
