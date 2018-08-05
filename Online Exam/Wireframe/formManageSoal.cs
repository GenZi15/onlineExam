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
    public partial class formManageSoal : Form
    {
        mainDataDataContext db = new mainDataDataContext();
        public formManageSoal()
        {
            InitializeComponent();
        }

        void refreshData()
        {
            dataGridView1.Rows.Clear();
            var getData = (
                from x in db.DetailSoals
                join f in db.HeaderSoals
                on x.idDetailSoal equals f.idDetailSoal
                join h in db.Mapels
                on f.idMapel equals h.idMapel
                join g in db.Kelas
                on f.idKelas equals g.idKelas
                where x.idDetailSoal == int.Parse(txtSearch.Text)
                select new
                {
                    x.pertanyaan, x.jawabanA, x.jawabanB, x.jawabanC, x.jawabanD, x.jawabanE, x.jawabanBenar, h.namaMapel, g.namaKelas, f.TglDibuat, x.idNoSoal
                });
            int no = 1;
            foreach (var item in getData)
            {
                dataGridView1.Rows.Add(no++,item.idNoSoal, item.pertanyaan, item.jawabanA, item.jawabanB, item.jawabanC, item.jawabanD, item.jawabanE, item.jawabanBenar, "Select", "Remove");
            }

            cbMapel.Text = getData.First().namaMapel.ToString();
            cbKelas.Text = getData.First().namaKelas.ToString();
            dtDibuat.Value = getData.First().TglDibuat.Value;
        }

        void emptyField()
        {
            txtNo.Text = ""; txtPertanyaan.Text = ""; txtA.Text = ""; txtB.Text = ""; txtC.Text = ""; txtD.Text = ""; txtE.Text = "";
            rdA.Checked = rdB.Checked = rdC.Checked = rdD.Checked = rdE.Checked = false;
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            refreshData();
        }
        int idNo;
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView buttonPressed = (DataGridView)sender;
            if (buttonPressed.Columns[e.ColumnIndex] is DataGridViewButtonColumn && dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString() == "Select")
            {
                MessageBox.Show("Select : " + dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString());
                idNo = int.Parse(dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString());
                txtNo.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
                txtPertanyaan.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
                txtA.Text = dataGridView1.Rows[e.RowIndex].Cells[3].Value.ToString();
                txtB.Text = dataGridView1.Rows[e.RowIndex].Cells[4].Value.ToString();
                txtC.Text = dataGridView1.Rows[e.RowIndex].Cells[5].Value.ToString();
                txtD.Text = dataGridView1.Rows[e.RowIndex].Cells[6].Value.ToString();
                txtE.Text = dataGridView1.Rows[e.RowIndex].Cells[7].Value.ToString();
                string jawabanBenar = dataGridView1.Rows[e.RowIndex].Cells[8].Value.ToString();
                //(jawabanBenar == "A" ? rdA.Select() : (jawabanBenar == "B" ? rdB.Select() : (jawabanBenar == "C" ? rdB.Select() : (jawabanBenar == "D" ? rdD.Select() : rdE.Select())))));
                if (jawabanBenar == "A") { rdA.Select(); } else if (jawabanBenar == "B") { rdB.Select(); } else if (jawabanBenar == "C") { rdC.Select(); } else if (jawabanBenar == "D") { rdD.Select(); } else if (jawabanBenar == "E") { rdE.Select(); }
            }
            else if(buttonPressed.Columns[e.ColumnIndex] is DataGridViewButtonColumn && dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString() == "Remove")
            {
                DialogResult dr = MessageBox.Show("Hapus Soal No "+dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString()+"?","", MessageBoxButtons.OKCancel);
                if (dr == DialogResult.OK)
                {
                    var hapusData = (
                        from x in db.DetailSoals
                        where x.idNoSoal == int.Parse(dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString())
                        select x
                        ).First();
                    db.DetailSoals.DeleteOnSubmit(hapusData);
                    db.SubmitChanges();
                    MessageBox.Show("Soal terhapus!");
                }
            }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            var updateSoal = (
                from x in db.DetailSoals
                where x.idDetailSoal == int.Parse(txtSearch.Text) && x.idNoSoal == idNo
                select x
                ).First();
            updateSoal.pertanyaan = txtPertanyaan.Text;
            updateSoal.jawabanA = txtA.Text;
            updateSoal.jawabanB = txtB.Text;
            updateSoal.jawabanC = txtC.Text;
            updateSoal.jawabanD = txtD.Text;
            updateSoal.jawabanE = txtE.Text;
            updateSoal.jawabanBenar = Convert.ToChar(rdA.Checked == true ? "A" : (rdB.Checked == true ? "B" : (rdC.Checked == true ? "C" : (rdD.Checked == true ? "D" : "E"))));
            db.SubmitChanges();
            MessageBox.Show("Soal No : "+idNo+" Berhasil di update!");
            refreshData();
            emptyField();
        }

        private void formManageSoal_Load(object sender, EventArgs e)
        {

        }
    }
}
