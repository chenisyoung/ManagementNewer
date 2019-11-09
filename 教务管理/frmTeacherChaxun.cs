using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Model;
using BLL;

namespace 教务管理
{
    public partial class frmTeacherChaxun : Form
    {
        TeacherInfo teacher;
        public frmTeacherChaxun(TeacherInfo teacher)
        {
            InitializeComponent();
            this.teacher = teacher;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            MessageBox.Show("功能尚在开发中...");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            List<TeacherKebiao> kbs = GetGerenKebiao.GetTeacherKebiao(this.teacher.JobNumber);
            this.dataGridView.DataSource = kbs;
            //string[] bt = { "课程名称", "课程号码", "教室号", "上课时间", "老师名字" };
            dataGridView.Columns[0].HeaderCell.Value = "课程名称";
            dataGridView.Columns[1].HeaderCell.Value = "课程编号";
            dataGridView.Columns[2].HeaderCell.Value = "教室号码";
            dataGridView.Columns[3].HeaderCell.Value = "上课时间";
        }
    }
}
