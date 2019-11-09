namespace 教务管理
{
    partial class FrmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.buttonInfo = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.buttonChaxun = new System.Windows.Forms.Button();
            this.labelCurrent = new System.Windows.Forms.Label();
            this.labelLogout = new System.Windows.Forms.Label();
            this.buttonAlter = new System.Windows.Forms.Button();
            this.buttonAdd = new System.Windows.Forms.Button();
            this.labelgeyan = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // buttonInfo
            // 
            this.buttonInfo.Location = new System.Drawing.Point(30, 59);
            this.buttonInfo.Name = "buttonInfo";
            this.buttonInfo.Size = new System.Drawing.Size(160, 61);
            this.buttonInfo.TabIndex = 0;
            this.buttonInfo.Text = "个人信息";
            this.buttonInfo.UseVisualStyleBackColor = true;
            this.buttonInfo.Click += new System.EventHandler(this.buttonInfo_Click);
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.Location = new System.Drawing.Point(279, 59);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(915, 549);
            this.panel1.TabIndex = 1;
            // 
            // buttonChaxun
            // 
            this.buttonChaxun.Location = new System.Drawing.Point(30, 184);
            this.buttonChaxun.Name = "buttonChaxun";
            this.buttonChaxun.Size = new System.Drawing.Size(160, 61);
            this.buttonChaxun.TabIndex = 1;
            this.buttonChaxun.Text = "查询";
            this.buttonChaxun.UseVisualStyleBackColor = true;
            this.buttonChaxun.Click += new System.EventHandler(this.buttonCourseInfo_Click);
            // 
            // labelCurrent
            // 
            this.labelCurrent.AutoSize = true;
            this.labelCurrent.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.labelCurrent.Location = new System.Drawing.Point(27, 687);
            this.labelCurrent.Name = "labelCurrent";
            this.labelCurrent.Size = new System.Drawing.Size(77, 20);
            this.labelCurrent.TabIndex = 0;
            this.labelCurrent.Text = "当前用户: ";
            // 
            // labelLogout
            // 
            this.labelLogout.AutoSize = true;
            this.labelLogout.Cursor = System.Windows.Forms.Cursors.Hand;
            this.labelLogout.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.labelLogout.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.labelLogout.ForeColor = System.Drawing.SystemColors.Highlight;
            this.labelLogout.Location = new System.Drawing.Point(285, 687);
            this.labelLogout.Name = "labelLogout";
            this.labelLogout.Size = new System.Drawing.Size(69, 20);
            this.labelLogout.TabIndex = 0;
            this.labelLogout.Text = "退出登录";
            this.labelLogout.Click += new System.EventHandler(this.label1_Click);
            // 
            // buttonAlter
            // 
            this.buttonAlter.Location = new System.Drawing.Point(30, 437);
            this.buttonAlter.Name = "buttonAlter";
            this.buttonAlter.Size = new System.Drawing.Size(160, 61);
            this.buttonAlter.TabIndex = 0;
            this.buttonAlter.Text = "添加";
            this.buttonAlter.UseVisualStyleBackColor = true;
            this.buttonAlter.Click += new System.EventHandler(this.buttonUpdate_click);
            // 
            // buttonAdd
            // 
            this.buttonAdd.Location = new System.Drawing.Point(31, 307);
            this.buttonAdd.Name = "buttonAdd";
            this.buttonAdd.Size = new System.Drawing.Size(160, 61);
            this.buttonAdd.TabIndex = 0;
            this.buttonAdd.Text = "修改";
            this.buttonAdd.UseVisualStyleBackColor = true;
            this.buttonAdd.Click += new System.EventHandler(this.buttonAdd_click);
            // 
            // labelgeyan
            // 
            this.labelgeyan.Font = new System.Drawing.Font("微软雅黑", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.labelgeyan.ForeColor = System.Drawing.Color.Black;
            this.labelgeyan.Location = new System.Drawing.Point(305, 629);
            this.labelgeyan.Name = "labelgeyan";
            this.labelgeyan.Size = new System.Drawing.Size(889, 41);
            this.labelgeyan.TabIndex = 2;
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1230, 711);
            this.Controls.Add(this.labelgeyan);
            this.Controls.Add(this.labelLogout);
            this.Controls.Add(this.labelCurrent);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.buttonAdd);
            this.Controls.Add(this.buttonAlter);
            this.Controls.Add(this.buttonChaxun);
            this.Controls.Add(this.buttonInfo);
            this.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "FrmMain";
            this.Text = "管理系统1.0 --beta";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmMain_FormClosing);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.FrmMain_FormClosed);
            this.Load += new System.EventHandler(this.FrmMain_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonInfo;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button buttonChaxun;
        private System.Windows.Forms.Label labelCurrent;
        private System.Windows.Forms.Label labelLogout;
        private System.Windows.Forms.Button buttonAlter;
        private System.Windows.Forms.Button buttonAdd;
        private System.Windows.Forms.Label labelgeyan;
    }
}