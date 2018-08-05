namespace Online_Exam.Wireframe
{
    partial class formMainMenu
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.changePasswordToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.logoutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.studentMenuToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
            this.teacherToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewUpdateSoalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addSoalToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.manageNilaiToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.bankSoalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.adminToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.manageSoalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.manageNilaiToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.studentMenuToolStripMenuItem,
            this.teacherToolStripMenuItem,
            this.adminToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1346, 28);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.changePasswordToolStripMenuItem,
            this.logoutToolStripMenuItem,
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(44, 24);
            this.fileToolStripMenuItem.Text = "&File";
            // 
            // changePasswordToolStripMenuItem
            // 
            this.changePasswordToolStripMenuItem.Name = "changePasswordToolStripMenuItem";
            this.changePasswordToolStripMenuItem.Size = new System.Drawing.Size(199, 26);
            this.changePasswordToolStripMenuItem.Text = "&Change Password";
            this.changePasswordToolStripMenuItem.Click += new System.EventHandler(this.changePasswordToolStripMenuItem_Click);
            // 
            // logoutToolStripMenuItem
            // 
            this.logoutToolStripMenuItem.Name = "logoutToolStripMenuItem";
            this.logoutToolStripMenuItem.Size = new System.Drawing.Size(199, 26);
            this.logoutToolStripMenuItem.Text = "&Logout";
            this.logoutToolStripMenuItem.Click += new System.EventHandler(this.logoutToolStripMenuItem_Click);
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(199, 26);
            this.exitToolStripMenuItem.Text = "&Exit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // studentMenuToolStripMenuItem
            // 
            this.studentMenuToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem2});
            this.studentMenuToolStripMenuItem.Name = "studentMenuToolStripMenuItem";
            this.studentMenuToolStripMenuItem.Size = new System.Drawing.Size(72, 24);
            this.studentMenuToolStripMenuItem.Text = "&Student";
            // 
            // toolStripMenuItem2
            // 
            this.toolStripMenuItem2.Name = "toolStripMenuItem2";
            this.toolStripMenuItem2.Size = new System.Drawing.Size(120, 26);
            this.toolStripMenuItem2.Text = "&Exam";
            this.toolStripMenuItem2.Click += new System.EventHandler(this.toolStripMenuItem2_Click);
            // 
            // teacherToolStripMenuItem
            // 
            this.teacherToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.viewUpdateSoalToolStripMenuItem,
            this.addSoalToolStripMenuItem1,
            this.manageNilaiToolStripMenuItem1,
            this.bankSoalToolStripMenuItem});
            this.teacherToolStripMenuItem.Name = "teacherToolStripMenuItem";
            this.teacherToolStripMenuItem.Size = new System.Drawing.Size(72, 24);
            this.teacherToolStripMenuItem.Text = "&Teacher";
            // 
            // viewUpdateSoalToolStripMenuItem
            // 
            this.viewUpdateSoalToolStripMenuItem.Name = "viewUpdateSoalToolStripMenuItem";
            this.viewUpdateSoalToolStripMenuItem.Size = new System.Drawing.Size(204, 26);
            this.viewUpdateSoalToolStripMenuItem.Text = "&View/Update Soal";
            this.viewUpdateSoalToolStripMenuItem.Click += new System.EventHandler(this.viewUpdateSoalToolStripMenuItem_Click);
            // 
            // addSoalToolStripMenuItem1
            // 
            this.addSoalToolStripMenuItem1.Name = "addSoalToolStripMenuItem1";
            this.addSoalToolStripMenuItem1.Size = new System.Drawing.Size(204, 26);
            this.addSoalToolStripMenuItem1.Text = "&Add Soal";
            this.addSoalToolStripMenuItem1.Click += new System.EventHandler(this.addSoalToolStripMenuItem1_Click);
            // 
            // manageNilaiToolStripMenuItem1
            // 
            this.manageNilaiToolStripMenuItem1.Name = "manageNilaiToolStripMenuItem1";
            this.manageNilaiToolStripMenuItem1.Size = new System.Drawing.Size(204, 26);
            this.manageNilaiToolStripMenuItem1.Text = "&Manage Nilai";
            this.manageNilaiToolStripMenuItem1.Click += new System.EventHandler(this.manageNilaiToolStripMenuItem1_Click);
            // 
            // bankSoalToolStripMenuItem
            // 
            this.bankSoalToolStripMenuItem.Name = "bankSoalToolStripMenuItem";
            this.bankSoalToolStripMenuItem.Size = new System.Drawing.Size(204, 26);
            this.bankSoalToolStripMenuItem.Text = "&Bank Soal";
            this.bankSoalToolStripMenuItem.Click += new System.EventHandler(this.bankSoalToolStripMenuItem_Click);
            // 
            // adminToolStripMenuItem
            // 
            this.adminToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.manageSoalToolStripMenuItem,
            this.manageNilaiToolStripMenuItem});
            this.adminToolStripMenuItem.Name = "adminToolStripMenuItem";
            this.adminToolStripMenuItem.Size = new System.Drawing.Size(65, 24);
            this.adminToolStripMenuItem.Text = "&Admin";
            this.adminToolStripMenuItem.Visible = false;
            // 
            // manageSoalToolStripMenuItem
            // 
            this.manageSoalToolStripMenuItem.Name = "manageSoalToolStripMenuItem";
            this.manageSoalToolStripMenuItem.Size = new System.Drawing.Size(173, 26);
            this.manageSoalToolStripMenuItem.Text = "Manage &Soal";
            this.manageSoalToolStripMenuItem.Click += new System.EventHandler(this.manageSoalToolStripMenuItem_Click);
            // 
            // manageNilaiToolStripMenuItem
            // 
            this.manageNilaiToolStripMenuItem.Name = "manageNilaiToolStripMenuItem";
            this.manageNilaiToolStripMenuItem.Size = new System.Drawing.Size(173, 26);
            this.manageNilaiToolStripMenuItem.Text = "Manage &Nilai";
            this.manageNilaiToolStripMenuItem.Click += new System.EventHandler(this.manageNilaiToolStripMenuItem_Click);
            // 
            // formMainMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1346, 637);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "formMainMenu";
            this.Text = "formMainMenu";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.formMainMenu_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem changePasswordToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem logoutToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem studentMenuToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem2;
        private System.Windows.Forms.ToolStripMenuItem teacherToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem adminToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem manageSoalToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem manageNilaiToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewUpdateSoalToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addSoalToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem manageNilaiToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem bankSoalToolStripMenuItem;
    }
}