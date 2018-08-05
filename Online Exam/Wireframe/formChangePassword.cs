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
    public partial class formChangePassword : Form
    {
        mainDataDataContext db = new mainDataDataContext();
        public formChangePassword()
        {
            InitializeComponent();
        }

        private void clearText()
        {
            textBox1.Text = ""; textBox2.Text = ""; textBox3.Text = "";
        }

        private void formChangePassword_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "" || textBox2.Text == "" || textBox3.Text == "")
            {
                MessageBox.Show("Tolong isi semua fild terlebih dahulu sebelum melanjutkan");
            }
            else
            {
                if (textBox1.Text != formLogin.passwordAkun)
                {
                    MessageBox.Show("Password Lama tidak Benar!", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if (textBox2.Text != textBox3.Text)
                    {
                        MessageBox.Show("Re-Type Password tidak cocok dengan Password Baru!");
                    }
                    else
                    {
                        var updateDataSiswa = (
                            from x in db.Siswas
                            where x.idSiswa == formLogin.idAkun
                            select x
                            );
                        var updateDataGuru = (
                            from x in db.Gurus
                            where x.idGuru == formLogin.idAkun
                            select x
                            );
                        if (updateDataSiswa.Count() != 0)
                        {
                            updateDataSiswa.First().password = textBox2.Text;
                            db.SubmitChanges();
                            MessageBox.Show("Password Diperbaharui!");
                            clearText();
                        }
                        else
                        {
                            updateDataGuru.First().password = textBox2.Text;
                            db.SubmitChanges();
                            MessageBox.Show("Password Diperbaharui!");
                            clearText();
                        }
                    }
                }
            }
        }
    }
}
