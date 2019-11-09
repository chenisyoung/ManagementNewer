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
    public partial class FrmAdd : Form
    {
        public FrmAdd()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            MessageBox.Show("更多功能尚在完善中!");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // 新建添加窗口
            Form frmStuInfo = new frmStuInfo();
            frmStuInfo.Show();
        }
    }
}
