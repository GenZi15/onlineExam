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
    public partial class formExam : Form
    {
        public static string namaMapel;
        public static string idMapel;
        mainDataDataContext db = new mainDataDataContext();
        public formExam()
        {
            InitializeComponent();
        }

        private void getNilaiSiswa()
        {
            //var getData = (
                
            //    );
        }

        private void btnKerjakan_Click(object sender, EventArgs e)
        {
            if (cbMapel.Text == "")
            {
                MessageBox.Show("Tolong isi Mapel terlebih dahulu!");
            }
            else
            {
                DialogResult dr = MessageBox.Show("Apakah anda yakin sudah siap?", "", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                if (dr == DialogResult.OK)
                {
                    namaMapel = cbMapel.Text;
                    idMapel = (
                        from x in db.HeaderSoals
                        join f in db.Mapels
                        on x.idMapel equals f.idMapel
                        where f.namaMapel == cbMapel.Text
                        select x.idSoal
                        ).First().ToString();
                    formUjian fujian = new formUjian();
                    fujian.ShowDialog();
                    this.Close();
                }
            }
        }

        private void formExam_Load(object sender, EventArgs e)
        {
            txtNISN.Text = formLogin.idAkun;
            txtName.Text = (
                            from x in db.Siswas
                            where x.idSiswa == txtNISN.Text
                            select x.fullName
                            ).First().ToString();
            cbKelas.Text = (
                            from x in db.Siswas
                            where x.idSiswa == txtNISN.Text
                            select x.kelas
                           ).First().ToString();

            var getData = (
                from x in db.Siswas
                join f in db.Ujians
                on x.idSiswa equals f.idSiswa
                join m in db.HeaderSoals
                on f.idSoal equals m.idSoal
                join n in db.DetailSoals
                on m.idDetailSoal equals n.idDetailSoal
                join g in db.Mapels
                on n.idMapel equals g.idMapel
                where x.idSiswa == txtNISN.Text
                select new
                {
                    g.namaMapel, f.nilai
                }).Distinct();
            foreach (var item in getData)
            {
                dataGridView1.Rows.Add(item.namaMapel, item.nilai);
            }

            //var getDataSoal = (
            //    from x in db.Mapels
            //    select x.namaMapel
            //    );

            //var filterDataSoal = (
            //    getDataSoal.Where(c => !c.Contains(cbMapel.Text))
            //    );

            //cbMapel.DataSource = filterDataSoal;
             var getMapelTotalRow = (from x in db.Mapels select x.idMapel).Max().ToString();
            for (int i = 0; i < int.Parse(getMapelTotalRow) ; i++)
            {
                if (dataGridView1.Rows.Count > i)
                {
                    if ((from x in db.Mapels where x.idMapel == i + 1 select x.namaMapel).First().ToString() == dataGridView1.Rows[i].Cells[0].Value.ToString())
                    {
                        continue;
                    }
                }
                else
                {
                    cbMapel.Items.Add((from x in db.Mapels where x.idMapel == i + 1 select x.namaMapel).First().ToString());

                }
            }
        }

        private void cbKelas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void cbMapel_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
