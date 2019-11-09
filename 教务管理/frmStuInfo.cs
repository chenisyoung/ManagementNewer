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
using DAL;

namespace 教务管理
{
    public partial class frmStuInfo : Form
    {
        StuBasicinfo student;
        bool isAdd;
        public frmStuInfo(StuBasicinfo student)
        {
            InitializeComponent();
            this.student = student;
            this.isAdd = false;
        }
        public frmStuInfo()
        {
            InitializeComponent();
            this.isAdd = true;
        }

        private void frmStuInfo_Load(object sender, EventArgs e)
        {
            // 如果不是添加才初始化
            if (!isAdd)
            {
                initTextBox(this.student);
                this.labelPwd.Visible = false;
                this.textBoxPwd.Visible = false;
            }
            else
            {
                this.buttonChangeInfo.Text = "确认添加";
                this.FormBorderStyle = FormBorderStyle.FixedSingle;
            }
        }
        void initTextBox(StuBasicinfo studen)
        {
            this.textBoxName.Text = student.stuName;
            this.textBoxNumber.Text = student.StudentID;
            this.textBoxMajor.Text = student.stuMajor;
            this.textBoxage.Text = student.stuAge.ToString();
            this.textBoxClass.Text = student.stuClass;
            this.textBoxCollege.Text = studen.stuCollege;
            this.textBoxGKchengji.Text = studen.GKchengji.ToString();
            this.textBoxShengyuandi.Text = studen.BiogenicLand.ToString();
            this.textBoxPhoneNumber.Text = studen.phoneNumber;
            this.textBoxGuardian1.Text = studen.stuGuardian1;
            this.textBoxGuardian2.Text = studen.stuGuardian2;
            this.textBoxIDcard.Text = studen.IDNumber;
            this.comboBoxGender.SelectedIndex = Gender2Number(studen.stuGender);
            this.textBoxGP1.Text = this.student.Guar1PhoneNumber;
            this.textBoxGP2.Text = this.student.Guar2PhoneNumber;

            foreach (var item in this.Controls)
            {
                if (item is TextBox)
                {
                    ((TextBox)item).Enabled = false;
                }
            }
            this.comboBoxGender.Enabled = false;

        }
        StuBasicinfo GetStuFromForm()
        {
            string pwd;
            // 如果是添加学生
            if (isAdd)
            {
                pwd = this.textBoxPwd.Text.Trim();
            }
            else
            {
                pwd = this.student.stu_pwd;
            }
            StuBasicinfo stu = new StuBasicinfo();
            //if (!isAdd)
            //{
            //    // 复制一个student对象
            //    StuBasicinfo student = new StuBasicinfo()
            //    {
            //        ID = this.student.ID,
            //        IDNumber = this.student.IDNumber,
            //        StudentID = this.student.StudentID,
            //        stuName = this.student.stuName,
            //        stuClass = this.student.stuClass,
            //        stuGender = this.student.stuGender,
            //        stuAge = this.student.stuAge,
            //        BiogenicLand = this.student.BiogenicLand,
            //        stuCollege = this.student.stuCollege,
            //        stuMajor = this.student.stuMajor,
            //        GKchengji = this.student.GKchengji,
            //        phoneNumber = this.student.phoneNumber,
            //        stuGuardian1 = this.student.stuGuardian1,
            //        stuGuardian2 = this.student.stuGuardian2,
            //        Guar1PhoneNumber = this.student.Guar1PhoneNumber,
            //        Guar2PhoneNumber = this.student.Guar2PhoneNumber,
            //        stu_pwd = this.student.stu_pwd
            //    };
            //}
            if (!isAdd)
            {
                stu.ID = this.student.ID;
            }
            stu.stu_pwd = pwd;
            stu.stuName = this.textBoxName.Text;
            stu.StudentID = this.textBoxNumber.Text;
            stu.stuMajor = this.textBoxMajor.Text;
            stu.stuAge = this.textBoxage.Text;
            stu.stuClass = this.textBoxClass.Text;
            stu.stuCollege = this.textBoxCollege.Text;
            stu.GKchengji = this.textBoxGKchengji.Text;
            stu.BiogenicLand = this.textBoxShengyuandi.Text;
            stu.phoneNumber = this.textBoxPhoneNumber.Text;
            stu.stuGuardian1 = this.textBoxGuardian1.Text;
            stu.stuGuardian2 = this.textBoxGuardian2.Text;
            stu.IDNumber = this.textBoxIDcard.Text;
            stu.stuGender = Number2Gender(this.comboBoxGender.SelectedIndex);
            stu.Guar1PhoneNumber = textBoxGP1.Text;
            stu.Guar2PhoneNumber = textBoxGP2.Text;
                // 不更新项目
            
            return stu;
        }

        private void textBoxage_KeyPress(object sender, KeyPressEventArgs e)
        {
            e = NumberOnly(sender, e);
            if (null == e)
            {
                return;
            }
        }
        KeyPressEventArgs NumberOnly(object sender, KeyPressEventArgs e)
        {

            if (e.KeyChar == 0x20)
            {
                e.KeyChar = (char)0;
            }
            if ((e.KeyChar == 0x2D) && ((((TextBox)sender).Text.Length == 0)))
            {
                return null;
            }
            if (e.KeyChar >= 0x20)
            {
                try
                {
                    double.Parse(((TextBox)sender).Text + e.KeyChar.ToString());
                }
                catch (Exception)
                {
                    e.KeyChar = (char)0;
                }

            }
            return e;
        }

        private void textBoxGKchengji_KeyPress(object sender, KeyPressEventArgs e)
        {
            e = NumberOnly(sender, e);
            if (null == e)
            {
                return;
            }
        }

        private void buttonChangeInfo_MouseClick(object sender, MouseEventArgs e)
        {
            if (0 == string.Compare(this.buttonChangeInfo.Text, "修改信息"))
            {
                foreach (var item in this.Controls)
                {
                    if (item is TextBox)
                    {
                        ((TextBox)item).Enabled = true;
                    }
                    this.buttonChangeInfo.Text = "确认修改";
                }
                this.textBoxNumber.Enabled = false; // 学号不能够更改
                this.comboBoxGender.Enabled = true;
            }
            else
            {
                // 开始尝试修改信息
                if (0 != string.Compare(this.buttonChangeInfo.Text, "确认修改"))
                {
                    try
                    {
                        int bs = BLL.Update.UpdateStudent(GetStuFromForm());
                    }
                    catch (Exception es)
                    {
                        MessageBox.Show(es.Message);
                    }
                }
                if (0 == string.Compare(this.buttonChangeInfo.Text, "确认添加"))
                {
                    StuBasicinfo stu = GetStuFromForm();
                    // 添加后不是修改
                    try
                    {
                        int vs = BLL.Update.InsertStudent(stu);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("输入数据错误!" + ex.Message);
                        return;
                    }
                    this.isAdd = false;
                    MessageBox.Show("添加成功!");
                    this.Close();
                }
                DAL.Services.LoginService ls = new DAL.Services.LoginService();
                this.student = ls.StuLogin(student);// 更新信息

                initTextBox(this.student);
                this.buttonChangeInfo.Text = "修改信息";
            }

        }
        int Gender2Number(string gender)
        {
            switch (gender)
            {
                case "男":
                    return 0;
                case "女":
                    return 1;
                case "不详":
                    return 2;
                default:
                    return -1;
            }
        }
        string Number2Gender(int number)
        {
            switch (number)
            {
                case 0:
                    return "男";
                case 1:
                    return "女";
                default:
                    return "不详";
            }
        }

        private void textBoxIDcard_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (((TextBox)sender).Text.Length < 17)
            // 前17位是数字
            {
                NumberOnly(sender, e);
            }
            if (((TextBox)sender).Text.Length == 17)
            {
                if (e.KeyChar == 'x' || e.KeyChar == 'X')
                {
                    e.KeyChar = 'X';
                    return;
                }
                NumberOnly(sender, e);
            }
            if (((TextBox)sender).Text.Length >= 18)
            //xianzhichangdu
            {
                if (e.KeyChar == (char)8)
                {
                    return;
                }
                else
                {
                    e.KeyChar = (char)0;
                }
            }
        }

        private void buttonChangeInfo_Click(object sender, EventArgs e)
        {

        }
    }
}
