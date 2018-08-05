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
    public partial class formManageSoalAdd : Form
    {
        mainDataDataContext db = new mainDataDataContext();
        public formManageSoalAdd()
        {
            InitializeComponent();
        }
        void refeshdata()
        {
            
        }
        int noSoal;
        private void getLastId()
        {
            if (dataGridView1.Rows.Count == 0)
            {
                noSoal = 1;
            }
            else
            {
                noSoal++;
            }
            txtNo.Text = noSoal.ToString();
        }

        void emptyField()
        {
            txtNo.Text = ""; txtPertanyaan.Text = ""; txtA.Text = ""; txtB.Text = ""; txtC.Text = ""; txtD.Text = ""; txtE.Text = "";
            rdA.Checked = rdB.Checked = rdC.Checked = rdD.Checked = rdE.Checked = false;
        }
        int lastIdDetailSoal;
        private void formManageSoalAdd_Load(object sender, EventArgs e)
        {
            getLastId();
            var getData = (
                from x in db.Gurus
                join f in db.AksesMapels
                on x.idGuru equals f.idGuru
                join n in db.AksesKelas
                on x.idGuru equals n.idGuru
                join g in db.Mapels
                on f.idMapel equals g.idMapel
                join m in db.Kelas
                on n.idKelas equals m.idKelas
                where x.idGuru == formLogin.idAkun
                select new
                {
                    x.fullName, g.namaMapel, m.namaKelas
                }).First();
            txtNamaGuru.Text = getData.fullName;
            cbMapel.DataSource = (
                from x in db.Gurus
                join f in db.AksesMapels
                on x.idGuru equals f.idGuru
                join g in db.Mapels
                on f.idMapel equals g.idMapel
                where x.idGuru == formLogin.idAkun
                select g.namaMapel
                );
            cbKelas.DataSource = (
                from x in db.Gurus
                join f in db.AksesKelas
                on x.idGuru equals f.idGuru
                join g in db.Kelas
                on f.idKelas equals g.idKelas
                where x.idGuru == formLogin.idAkun
                select g.namaKelas
                );
            var getLastIdDetailSoal = (
                from x in db.DetailSoals
                orderby x.idDetailSoal descending
                select x
                );
            lastIdDetailSoal = int.Parse(getLastIdDetailSoal.First().idDetailSoal.ToString())+1;
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtPertanyaan.Text == "")
            {
                MessageBox.Show("Pertanyaan anda belum diisi!");
            }
            else if (txtA.Text == "" || txtB.Text == "" || txtC.Text == "" || txtD.Text == "" || txtE.Text == "")
            {
                MessageBox.Show("Tolong isi semua field Jawaban yang ada!");
            }
            else if (rdA.Checked == false && rdB.Checked == false && rdC.Checked == false && rdD.Checked == false && rdE.Checked == false)
            {
                MessageBox.Show("Tolong pilih jawaban yang benar sebelum melanjutkan!");
            }
            else
            {
                MessageBox.Show("Data terisi semua!");
                //dataGridView1.ColumnCount = 8;
                string[] row = new string[] { txtNo.Text, txtPertanyaan.Text, txtA.Text, txtB.Text, txtC.Text, txtD.Text, txtE.Text, (rdA.Checked == true ? "A" : (rdB.Checked == true ? "B" : (rdC.Checked == true ? "C" : (rdD.Checked == true ? "D" : "E")))), "Remove" };
                this.dataGridView1.Rows.Add(row);
                emptyField();
                getLastId();
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView btnClick = (DataGridView)sender;
            if (btnClick.Columns[e.ColumnIndex] is DataGridViewButtonColumn)
            {
                DialogResult dr = MessageBox.Show("Apakah anda yakin ingin menghapus soal No " + dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString() + " ?", "", MessageBoxButtons.OKCancel);
                if (dr == DialogResult.OK)
                {
                    dataGridView1.Rows.RemoveAt(e.RowIndex);
                }
            }
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            HeaderSoal insertHeader = new HeaderSoal();

            for (int i = 0; i < dataGridView1.Rows.Count; i++)
            {
                DetailSoal insertDetail = new DetailSoal();
                insertDetail.idDetailSoal = lastIdDetailSoal;
                insertDetail.idMapel = (
                    from x in db.Gurus
                    join f in db.AksesMapels
                    on x.idGuru equals f.idGuru
                    join g in db.Mapels
                    on f.idMapel equals g.idMapel
                    where x.idGuru == formLogin.idAkun && g.namaMapel == cbMapel.Text
                    select g.idMapel
                    ).First();
                insertDetail.idNoSoal = i+1;
                insertDetail.pertanyaan = dataGridView1.Rows[i].Cells[1].Value.ToString();
                insertDetail.jawabanA = dataGridView1.Rows[i].Cells[2].Value.ToString();
                insertDetail.jawabanB = dataGridView1.Rows[i].Cells[3].Value.ToString();
                insertDetail.jawabanC = dataGridView1.Rows[i].Cells[4].Value.ToString();
                insertDetail.jawabanD = dataGridView1.Rows[i].Cells[5].Value.ToString();
                insertDetail.jawabanE = dataGridView1.Rows[i].Cells[6].Value.ToString();
                insertDetail.jawabanBenar = (dataGridView1.Rows[i].Cells[7].Value.ToString() == "A" ? 'A' : (dataGridView1.Rows[i].Cells[7].Value.ToString() == "B" ? 'B' : (dataGridView1.Rows[i].Cells[7].Value.ToString() == "C" ? 'C' : (dataGridView1.Rows[i].Cells[7].Value.ToString() == "D" ? 'D' : 'E'))));
                db.DetailSoals.InsertOnSubmit(insertDetail);
                db.SubmitChanges();
            }
            insertHeader.idMapel = (
                    from x in db.Gurus
                    join f in db.AksesMapels
                    on x.idGuru equals f.idGuru
                    join g in db.Mapels
                    on f.idMapel equals g.idMapel
                    where x.idGuru == formLogin.idAkun && g.namaMapel == cbMapel.Text
                    select g.idMapel
                    ).First();
            insertHeader.idGuru = formLogin.idAkun;
            insertHeader.idDetailSoal = lastIdDetailSoal;
            insertHeader.TglDibuat = DateTime.Now.Date;
            insertHeader.jmlSoal = dataGridView1.Rows.Count;
            insertHeader.idKelas = (
                from x in db.Gurus
                join f in db.AksesKelas
                on x.idGuru equals f.idGuru
                join g in db.Kelas
                on f.idKelas equals g.idKelas
                where x.idGuru == formLogin.idAkun && g.namaKelas == cbKelas.Text
                select g.idKelas
                ).First();
            db.HeaderSoals.InsertOnSubmit(insertHeader);
            db.SubmitChanges();
            MessageBox.Show("Soal Berhasil Dibuat!");
        }
    }
}
