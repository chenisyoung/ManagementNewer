namespace 教务管理
{
    partial class FrmUpdate
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.buttonUpdateStu = new System.Windows.Forms.Button();
            this.labelNumber = new System.Windows.Forms.Label();
            this.textBoxNumber = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.buttonChaxun = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.Location = new System.Drawing.Point(12, 98);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(816, 374);
            this.panel1.TabIndex = 0;
            // 
            // buttonUpdateStu
            // 
            this.buttonUpdateStu.Font = new System.Drawing.Font("微软雅黑", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.buttonUpdateStu.Location = new System.Drawing.Point(43, 12);
            this.buttonUpdateStu.Name = "buttonUpdateStu";
            this.buttonUpdateStu.Size = new System.Drawing.Size(117, 34);
            this.buttonUpdateStu.TabIndex = 1;
            this.buttonUpdateStu.Text = "学生信息";
            this.buttonUpdateStu.UseVisualStyleBackColor = true;
            this.buttonUpdateStu.Click += new System.EventHandler(this.buttonUpdateStu_Click);
            // 
            // labelNumber
            // 
            this.labelNumber.AutoSize = true;
            this.labelNumber.Font = new System.Drawing.Font("微软雅黑", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.labelNumber.Location = new System.Drawing.Point(309, 29);
            this.labelNumber.Name = "labelNumber";
            this.labelNumber.Size = new System.Drawing.Size(55, 25);
            this.labelNumber.TabIndex = 2;
            this.labelNumber.Text = "学号:";
            this.labelNumber.Visible = false;
            // 
            // textBoxNumber
            // 
            this.textBoxNumber.Location = new System.Drawing.Point(389, 29);
            this.textBoxNumber.Name = "textBoxNumber";
            this.textBoxNumber.Size = new System.Drawing.Size(134, 25);
            this.textBoxNumber.TabIndex = 3;
            this.textBoxNumber.Visible = false;
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("微软雅黑", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.button1.Location = new System.Drawing.Point(43, 60);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(117, 34);
            this.button1.TabIndex = 1;
            this.button1.Text = "更多";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.wait);
            // 
            // buttonChaxun
            // 
            this.buttonChaxun.Font = new System.Drawing.Font("微软雅黑", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.buttonChaxun.Location = new System.Drawing.Point(539, 24);
            this.buttonChaxun.Name = "buttonChaxun";
            this.buttonChaxun.Size = new System.Drawing.Size(77, 34);
            this.buttonChaxun.TabIndex = 1;
            this.buttonChaxun.Text = "查询";
            this.buttonChaxun.UseVisualStyleBackColor = true;
            this.buttonChaxun.Visible = false;
            this.buttonChaxun.Click += new System.EventHandler(this.buttonChaxun_Click);
            // 
            // FrmUpdate
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(850, 487);
            this.Controls.Add(this.textBoxNumber);
            this.Controls.Add(this.labelNumber);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.buttonChaxun);
            this.Controls.Add(this.buttonUpdateStu);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmUpdate";
            this.Text = "FrmUpdate";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button buttonUpdateStu;
        private System.Windows.Forms.Label labelNumber;
        private System.Windows.Forms.TextBox textBoxNumber;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button buttonChaxun;
    }
}