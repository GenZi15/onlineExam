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
    public partial class formManageNilai : Form
    {
        mainDataDataContext db = new mainDataDataContext();
        public formManageNilai()
        {
            InitializeComponent();
        }

        private void insertCBData()
        {
            cbMapel.DataSource = (
                from x in db.Mapels
                select x.namaMapel
                );
            cbKelas.DataSource = (
                from x in db.Kelas
                select x.namaKelas
                );
            cbSpecificClass.DataSource = (
                from x in db.detailKelas
                select x.noKelas
                );
        }

        private void formManageNilai_Load(object sender, EventArgs e)
        {
            insertCBData();
            var getData = (
                from x in db.Siswas
                join f in db.Ujians
                on x.idSiswa equals f.idSiswa
                join g in db.HeaderSoals
                on f.idSoal equals g.idSoal
                join n in db.Mapels
                on g.idMapel equals n.idMapel
                join m in db.Kelas
                on g.idKelas equals m.idKelas
                select new
                {
                    x.idSiswa, x.fullName, n.namaMapel, m.namaKelas, f.nilai
                });
            foreach (var item in getData)
            {
                dataGridView1.Rows.Add(item.idSiswa, item.fullName, item.namaMapel, item.namaKelas, item.nilai);
            }
            cbSpecificClass.Text = cbMapel.Text = cbKelas.Text = "";
        }


        private void btnExport_Click(object sender, EventArgs e)
        {
            Microsoft.Office.Interop.Excel._Application excel = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel._Workbook workbook = excel.Workbooks.Add(Type.Missing);
            Microsoft.Office.Interop.Excel._Worksheet worksheet = null;

            try
            {
                worksheet = workbook.ActiveSheet;
                worksheet.Name = "Nilai Siswa";

                int cellRowIndex = 1;
                int cellColumnIndex = 1;

                for (int i = 0; i < dataGridView1.Rows.Count; i++)
                {
                    for (int j = 0; j < dataGridView1.Columns.Count; j++)
                    {
                        if (cellRowIndex == 1)
                        {
                            worksheet.Cells[cellRowIndex, cellColumnIndex] = dataGridView1.Columns[j].HeaderText;
                            worksheet.Cells[cellRowIndex + 1, cellColumnIndex] = dataGridView1.Rows[i].Cells[j].Value.ToString();
                            if (cellColumnIndex == dataGridView1.Columns.Count)
                            {
                                cellRowIndex = 2;
                            }
                        }
                        else
                        {
                            worksheet.Cells[cellRowIndex, cellColumnIndex] = dataGridView1.Rows[i].Cells[j].Value.ToString();
                        }
                        cellColumnIndex++;
                    }
                    cellColumnIndex = 1;
                    cellRowIndex++;
                }

                SaveFileDialog saveDialog = new SaveFileDialog();
                saveDialog.Filter = "Excel files (*.xlsx)|*.xlsx|All files (*.*)|*.*";
                saveDialog.FilterIndex = 1;
                saveDialog.DefaultExt = "Excel files (*.xlsx)|*.xlsx";

                if (saveDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    workbook.SaveAs(saveDialog.FileName);
                    MessageBox.Show("Export Berhasil");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                excel.Quit();
                workbook = null;
                excel = null;
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.Clear();
            var searchData = (
                from x in db.Siswas
                join f in db.Ujians
                on x.idSiswa equals f.idSiswa
                join g in db.HeaderSoals
                on f.idSoal equals g.idSoal
                join n in db.Mapels
                on g.idMapel equals n.idMapel
                join m in db.Kelas
                on g.idKelas equals m.idKelas
                select new
                {
                    x.idSiswa, x.fullName, n.namaMapel, m.namaKelas, f.nilai, x.idDetailKelas
                });

            var searchTitle = (
                searchData.Where(c => c.namaMapel.Contains(cbMapel.Text) && c.namaKelas.Contains(cbKelas.Text) && c.idDetailKelas.ToString().Contains(cbSpecificClass.Text))
                );
            foreach (var item in searchTitle)
            {
                dataGridView1.Rows.Add(item.idSiswa, item.fullName, item.namaMapel, item.namaKelas, item.nilai);
            }
        }
    }
}
