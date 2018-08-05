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
    public partial class formLogin : Form
    {
        mainDataDataContext db = new mainDataDataContext();
        Siswa getRoleSiswa;
        Guru getRoleGuru;
        public static string roleAkses;
        public static string idAkun;
        public static string passwordAkun;
        public formLogin()
        {
            getRoleSiswa = null;
            getRoleGuru = null;
            InitializeComponent();
        }

        public void resetText()
        {
            textBox1.Text = ""; textBox2.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {


            var getSiswa = (
                from x in db.Siswas
                where x.idSiswa == textBox1.Text && x.password == textBox2.Text
                select x
                );
            var getGuru = (
                from x in db.Gurus
                where x.idGuru == textBox1.Text && x.password == textBox2.Text
                select x
                );
            if (getSiswa.Count() == 0 && getGuru.Count() == 0)
            {
                MessageBox.Show("Akun Tidak Ditemukan!");
            }
            else
            {
                if (getSiswa.Count() != 0)
                {
                    getRoleSiswa = getSiswa.First();
                    roleAkses = getRoleSiswa.role.ToString();
                    MessageBox.Show("Login Berhasil!");
                    formMainMenu main = new formMainMenu();
                    main.frmLogin = this;
                    idAkun = textBox1.Text;
                    passwordAkun = textBox2.Text;
                    main.Show();
                    this.Hide();
                    main.refreshRole();
                }
                else

                {
                    getRoleGuru = getGuru.First();
                    roleAkses = getRoleGuru.role.ToString();
                    MessageBox.Show("Login Berhasil!");
                    formMainMenu main = new formMainMenu();
                    main.frmLogin = this;
                    idAkun = textBox1.Text;
                    passwordAkun = textBox2.Text;
                    main.Show();
                    this.Hide();
                    main.refreshRole();
                }
            }
        }
    }
}
