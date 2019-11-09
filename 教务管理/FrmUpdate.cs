using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;
using DAL;
using Model;
namespace 教务管理
{
    public partial class FrmUpdate : Form
    {
        public FrmUpdate()
        {
            InitializeComponent();
        }

        private void wait(object sender, EventArgs e)
        {
            MessageBox.Show("更多功能开发中!");
        }

        private void buttonUpdateStu_Click(object sender, EventArgs e)
        {
            labelNumber.Visible = true;
            textBoxNumber.Visible = true;
            buttonChaxun.Visible = true;
            textBoxNumber.Focus();
        }

        private void buttonChaxun_Click(object sender, EventArgs e)
        {
            string stuNumber = this.textBoxNumber.Text;// 获取学号
            DAL.Services.StuBasicInfoService sbs = new DAL.Services.StuBasicInfoService();
            StuBasicinfo student = sbs.GetStuByStuID(stuNumber);
            if (null == student)
            {
                MessageBox.Show("未查询到学生信息!");
                return;
            }
            else
            {
                Form frmStu = new frmStuInfo(student);
                frmStu.TopLevel = false;
                frmStu.Parent = this.panel1;
                frmStu.Show();
            }
        }
    }
}
