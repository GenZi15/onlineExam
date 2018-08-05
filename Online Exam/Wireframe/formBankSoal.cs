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
    public partial class formBankSoal : Form
    {
        mainDataDataContext db = new mainDataDataContext();
        public formBankSoal()
        {
            InitializeComponent();
        }

        private void formBankSoal_Load(object sender, EventArgs e)
        {
            var getData = (
                from x in db.HeaderSoals
                join f in db.Mapels
                on x.idMapel equals f.idMapel
                join m in db.Gurus
                on x.idGuru equals m.idGuru
                join n in db.DetailSoals
                on x.idDetailSoal equals n.idDetailSoal
                join g in db.Kelas
                on x.idKelas equals g.idKelas
                select new
                {
                    x.idSoal, f.namaMapel, m.fullName, x.TglDibuat, x.jmlSoal, g.namaKelas
                }).Distinct();

            foreach (var item in getData)
            {
                dataGridView1.Rows.Add(item.idSoal, item.namaMapel, item.namaKelas, item.fullName, item.TglDibuat, item.jmlSoal);
            }
        }
    }
}
