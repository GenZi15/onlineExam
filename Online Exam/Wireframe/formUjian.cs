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
    public partial class formUjian : Form
    {
        mainDataDataContext db = new mainDataDataContext();
        public formUjian()
        {
            InitializeComponent();
        }
        int noSoal = 1;
        private void changeNo()
        {
            lblNo.Text = "" + noSoal + "/" + (from x in db.HeaderSoals join f in db.Mapels on x.idMapel equals f.idMapel where f.namaMapel == formExam.namaMapel select x.jmlSoal).First().ToString(); 
        }

        private void updateSoal()
        {
            txtSoal.Text = (
                from x in db.DetailSoals
                where x.idDetailSoal == int.Parse(formExam.idMapel) && x.idNoSoal == noSoal
                select x.pertanyaan
                ).First().ToString();
            rdJawabA.Text = (
                from x in db.DetailSoals
                where x.idDetailSoal == int.Parse(formExam.idMapel) && x.idNoSoal == noSoal
                select x.jawabanA
                ).First().ToString();
            rdJawabB.Text = (
                from x in db.DetailSoals
                where x.idDetailSoal == int.Parse(formExam.idMapel) && x.idNoSoal == noSoal
                select x.jawabanB
                ).First().ToString();
            rdJawabC.Text = (
                from x in db.DetailSoals
                where x.idDetailSoal == int.Parse(formExam.idMapel) && x.idNoSoal == noSoal
                select x.jawabanC
                ).First().ToString();
            rdJawabD.Text = (
                from x in db.DetailSoals
                where x.idDetailSoal == int.Parse(formExam.idMapel) && x.idNoSoal == noSoal
                select x.jawabanD
                ).First().ToString();
            rdJawabE.Text = (
                from x in db.DetailSoals
                where x.idDetailSoal == int.Parse(formExam.idMapel) && x.idNoSoal == noSoal
                select x.jawabanE
                ).First().ToString();
        }
        string[] answer = new string[50];
        private void saveOptions()
        {
            //if (answer[noSoal] == answer[noSoal])
            //{
            //    rdJawabA.Checked = (answer[noSoal-1] == 'a' ? true : (answer[noSoal] == 'b' ? false : (answer[noSoal] == 'c' ? false : (answer[noSoal] == 'd' ? false : false))));
            //    rdJawabB.Checked = (answer[noSoal-1] == 'a' ? false : (answer[noSoal] == 'b' ? true : (answer[noSoal] == 'c' ? false : (answer[noSoal] == 'd' ? false : false))));
            //    rdJawabC.Checked = (answer[noSoal-1] == 'a' ? false : (answer[noSoal] == 'b' ? false : (answer[noSoal] == 'c' ? true : (answer[noSoal] == 'd' ? false : false))));
            //    rdJawabD.Checked = (answer[noSoal-1] == 'a' ? false : (answer[noSoal] == 'b' ? false : (answer[noSoal] == 'c' ? false : (answer[noSoal] == 'd' ? true : false))));
            //    rdJawabE.Checked = (answer[noSoal-1] == 'a' ? false : (answer[noSoal] == 'b' ? false : (answer[noSoal] == 'c' ? false : (answer[noSoal] == 'd' ? false : true))));
            //}
            //else
            //{
                answer[noSoal-1] = (rdJawabA.Checked == true ? "A" : (rdJawabB.Checked == true ? "B" : (rdJawabC.Checked == true ? "C" : (rdJawabD.Checked == true ? "D" : "E"))));
            //}
        }

        private void formUjian_Load(object sender, EventArgs e)
        {
            this.Text = formExam.namaMapel;
            updateSoal();
            changeNo();
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            if (noSoal >= 1 && noSoal < int.Parse((from x in db.HeaderSoals join f in db.Mapels on x.idMapel equals f.idMapel where f.namaMapel == formExam.namaMapel select x.jmlSoal).First().ToString()))
            {
                noSoal += 1;
                updateSoal();
                saveOptions();
                changeNo();
                rdJawabA.Checked = rdJawabB.Checked = rdJawabC.Checked = rdJawabD.Checked = rdJawabE.Checked = false;
            }
            else if (noSoal == int.Parse((from x in db.HeaderSoals join f in db.Mapels on x.idMapel equals f.idMapel where f.namaMapel == formExam.namaMapel select x.jmlSoal).First().ToString()))
            {
                noSoal += 1;
                saveOptions();
            }
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            if (noSoal >= 2 && noSoal <= int.Parse((from x in db.HeaderSoals join f in db.Mapels on x.idMapel equals f.idMapel where f.namaMapel == formExam.namaMapel select x.jmlSoal).First().ToString()))
            {
                noSoal -= 1;
                updateSoal();
                saveOptions();
                changeNo();
            }
        }

        int pointNilai = 0;

        private void button3_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Apakah anda yakin?","", MessageBoxButtons.OKCancel);
            if (dr == DialogResult.OK)
            {
                for (int i = 1; i <= int.Parse((from x in db.HeaderSoals join f in db.Mapels on x.idMapel equals f.idMapel where f.namaMapel == formExam.namaMapel select x.jmlSoal).First().ToString()); i++)
                {
                    string jwbBenar = (from x in db.DetailSoals where x.idDetailSoal == int.Parse(formExam.idMapel) && x.idNoSoal == i select x.jawabanBenar).First().ToString();
                    if (answer[i] == jwbBenar)
                    {
                        pointNilai += 10;
                    }
                }
                Ujian insertData = new Ujian();
                insertData.idSoal = int.Parse(formExam.idMapel);
                insertData.idSiswa = formLogin.idAkun;
                insertData.tglPengerjaan = DateTime.Now;
                insertData.nilai = pointNilai;
                db.Ujians.InsertOnSubmit(insertData);
                db.SubmitChanges();
                MessageBox.Show("Nilai anda :" + pointNilai);
                this.Close();
            }
        }
    }
}