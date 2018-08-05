using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Online_Exam.Wireframe
{
    public partial class formMainMenu : Form
    {
        formExam frmEx;
        formManageSoal frmViewSoal;
        formManageSoalAdd frmAddSoal;
        formManageNilai frmNilai;
        formChangePassword frmChangePassword;
        formBankSoal frmBankSoal;
        public formLogin frmLogin = new formLogin();
        public formMainMenu()
        {
            InitializeComponent();
        }

        public void refreshRole()
        {
            if (formLogin.roleAkses == "Siswa")
            {
                studentMenuToolStripMenuItem.Enabled = true;
                teacherToolStripMenuItem.Enabled = false;
            }
            else
            {
                teacherToolStripMenuItem.Enabled = true;
                studentMenuToolStripMenuItem.Enabled = false;
            }
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void manageSoalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmViewSoal == null || frmViewSoal.IsDisposed)
            {
                frmViewSoal = new formManageSoal();
            }
            frmViewSoal.MdiParent = this;
            frmViewSoal.Show();
        }

        private void manageNilaiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmNilai == null || frmNilai.IsDisposed)
            {
                frmNilai = new formManageNilai();
            }
            frmNilai.MdiParent = this;
            frmNilai.Show();
        }

        private void viewUpdateSoalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmViewSoal == null || frmViewSoal.IsDisposed)
            {
                frmViewSoal = new formManageSoal();
            }
            frmViewSoal.MdiParent = this;
            frmViewSoal.Show();
        }

        private void addSoalToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (frmAddSoal == null || frmAddSoal.IsDisposed)
            {
                frmAddSoal = new formManageSoalAdd();
            }
            frmAddSoal.MdiParent = this;
            frmAddSoal.Show();
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            if (frmEx == null || frmEx.IsDisposed)
            {
                frmEx = new formExam();
            }
            frmEx.MdiParent = this;
            frmEx.Show();
        }

        private void changePasswordToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmChangePassword == null || frmChangePassword.IsDisposed)
            {
                frmChangePassword = new formChangePassword();
            }
            frmChangePassword.MdiParent = this;
            frmChangePassword.Show();
        }

        private void manageNilaiToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (frmNilai == null || frmNilai.IsDisposed)
            {
                frmNilai = new formManageNilai();
            }
            frmNilai.MdiParent = this;
            frmNilai.Show();
        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLogin.Show();
            frmLogin.resetText();
            this.Close();
        }

        private void bankSoalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmBankSoal == null || frmBankSoal.IsDisposed)
            {
                frmBankSoal = new formBankSoal();
            }
            frmBankSoal.MdiParent = this;
            frmBankSoal.Show();
        }

        private void formMainMenu_Load(object sender, EventArgs e)
        {

        }
    }
}
