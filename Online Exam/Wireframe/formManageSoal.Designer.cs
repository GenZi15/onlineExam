namespace Online_Exam.Wireframe
{
    partial class formManageSoal
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column11 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column8 = new System.Windows.Forms.DataGridViewButtonColumn();
            this.Column10 = new System.Windows.Forms.DataGridViewButtonColumn();
            this.label3 = new System.Windows.Forms.Label();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.dtDibuat = new System.Windows.Forms.DateTimePicker();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbKelas = new System.Windows.Forms.ComboBox();
            this.cbMapel = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtNo = new System.Windows.Forms.TextBox();
            this.txtPertanyaan = new System.Windows.Forms.TextBox();
            this.txtA = new System.Windows.Forms.TextBox();
            this.rdA = new System.Windows.Forms.RadioButton();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.rdB = new System.Windows.Forms.RadioButton();
            this.txtB = new System.Windows.Forms.TextBox();
            this.rdD = new System.Windows.Forms.RadioButton();
            this.txtD = new System.Windows.Forms.TextBox();
            this.rdE = new System.Windows.Forms.RadioButton();
            this.txtE = new System.Windows.Forms.TextBox();
            this.rdC = new System.Windows.Forms.RadioButton();
            this.txtC = new System.Windows.Forms.TextBox();
            this.btnSearch = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column11,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5,
            this.Column6,
            this.Column9,
            this.Column7,
            this.Column8,
            this.Column10});
            this.dataGridView1.Location = new System.Drawing.Point(12, 187);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(1091, 309);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // Column1
            // 
            this.Column1.HeaderText = "No";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column11
            // 
            this.Column11.HeaderText = "IdNoSoal";
            this.Column11.Name = "Column11";
            this.Column11.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Pertanyaan";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Jawaban A";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            // 
            // Column4
            // 
            this.Column4.HeaderText = "Jawaban B";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            // 
            // Column5
            // 
            this.Column5.HeaderText = "Jawaban C";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            // 
            // Column6
            // 
            this.Column6.HeaderText = "Jawaban D";
            this.Column6.Name = "Column6";
            this.Column6.ReadOnly = true;
            // 
            // Column9
            // 
            this.Column9.HeaderText = "Jawaban E";
            this.Column9.Name = "Column9";
            this.Column9.ReadOnly = true;
            // 
            // Column7
            // 
            this.Column7.HeaderText = "Jawaban Benar";
            this.Column7.Name = "Column7";
            this.Column7.ReadOnly = true;
            // 
            // Column8
            // 
            this.Column8.HeaderText = "Select";
            this.Column8.Name = "Column8";
            this.Column8.ReadOnly = true;
            this.Column8.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column8.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            // 
            // Column10
            // 
            this.Column10.HeaderText = "Remove";
            this.Column10.Name = "Column10";
            this.Column10.ReadOnly = true;
            this.Column10.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column10.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Papyrus", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.DarkRed;
            this.label3.Location = new System.Drawing.Point(12, 18);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(406, 31);
            this.label3.TabIndex = 7;
            this.label3.Text = "Online Exam : VIEW/UPDATE SOAL";
            // 
            // btnUpdate
            // 
            this.btnUpdate.Location = new System.Drawing.Point(409, 810);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(217, 46);
            this.btnUpdate.TabIndex = 9;
            this.btnUpdate.Text = "Update";
            this.btnUpdate.UseVisualStyleBackColor = true;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 81);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(102, 17);
            this.label1.TabIndex = 11;
            this.label1.Text = "Search ID Soal";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(726, 78);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 17);
            this.label2.TabIndex = 12;
            this.label2.Text = "Tgl Dibuat";
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(126, 75);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(226, 22);
            this.txtSearch.TabIndex = 13;
            // 
            // dtDibuat
            // 
            this.dtDibuat.Enabled = false;
            this.dtDibuat.Location = new System.Drawing.Point(805, 75);
            this.dtDibuat.Name = "dtDibuat";
            this.dtDibuat.Size = new System.Drawing.Size(200, 22);
            this.dtDibuat.TabIndex = 14;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbKelas);
            this.groupBox1.Controls.Add(this.cbMapel);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Location = new System.Drawing.Point(18, 102);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(352, 79);
            this.groupBox1.TabIndex = 15;
            this.groupBox1.TabStop = false;
            // 
            // cbKelas
            // 
            this.cbKelas.Enabled = false;
            this.cbKelas.FormattingEnabled = true;
            this.cbKelas.Location = new System.Drawing.Point(62, 48);
            this.cbKelas.Name = "cbKelas";
            this.cbKelas.Size = new System.Drawing.Size(81, 24);
            this.cbKelas.TabIndex = 20;
            // 
            // cbMapel
            // 
            this.cbMapel.Enabled = false;
            this.cbMapel.FormattingEnabled = true;
            this.cbMapel.Location = new System.Drawing.Point(62, 21);
            this.cbMapel.Name = "cbMapel";
            this.cbMapel.Size = new System.Drawing.Size(194, 24);
            this.cbMapel.TabIndex = 19;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(10, 55);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(43, 17);
            this.label5.TabIndex = 18;
            this.label5.Text = "Kelas";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 27);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(46, 17);
            this.label4.TabIndex = 16;
            this.label4.Text = "Mapel";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(23, 31);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(26, 17);
            this.label6.TabIndex = 16;
            this.label6.Text = "No";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(213, 26);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(81, 17);
            this.label7.TabIndex = 17;
            this.label7.Text = "Pertanyaan";
            // 
            // txtNo
            // 
            this.txtNo.Enabled = false;
            this.txtNo.Location = new System.Drawing.Point(75, 26);
            this.txtNo.Name = "txtNo";
            this.txtNo.Size = new System.Drawing.Size(100, 22);
            this.txtNo.TabIndex = 23;
            // 
            // txtPertanyaan
            // 
            this.txtPertanyaan.Location = new System.Drawing.Point(308, 21);
            this.txtPertanyaan.Multiline = true;
            this.txtPertanyaan.Name = "txtPertanyaan";
            this.txtPertanyaan.Size = new System.Drawing.Size(353, 73);
            this.txtPertanyaan.TabIndex = 24;
            // 
            // txtA
            // 
            this.txtA.Location = new System.Drawing.Point(171, 625);
            this.txtA.Multiline = true;
            this.txtA.Name = "txtA";
            this.txtA.Size = new System.Drawing.Size(249, 54);
            this.txtA.TabIndex = 25;
            // 
            // rdA
            // 
            this.rdA.AutoSize = true;
            this.rdA.Location = new System.Drawing.Point(27, 626);
            this.rdA.Name = "rdA";
            this.rdA.Size = new System.Drawing.Size(98, 21);
            this.rdA.TabIndex = 30;
            this.rdA.TabStop = true;
            this.rdA.Text = "Jawaban A";
            this.rdA.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtNo);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.txtPertanyaan);
            this.groupBox2.Location = new System.Drawing.Point(18, 512);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(677, 107);
            this.groupBox2.TabIndex = 35;
            this.groupBox2.TabStop = false;
            // 
            // rdB
            // 
            this.rdB.AutoSize = true;
            this.rdB.Location = new System.Drawing.Point(27, 686);
            this.rdB.Name = "rdB";
            this.rdB.Size = new System.Drawing.Size(98, 21);
            this.rdB.TabIndex = 37;
            this.rdB.TabStop = true;
            this.rdB.Text = "Jawaban B";
            this.rdB.UseVisualStyleBackColor = true;
            // 
            // txtB
            // 
            this.txtB.Location = new System.Drawing.Point(171, 685);
            this.txtB.Multiline = true;
            this.txtB.Name = "txtB";
            this.txtB.Size = new System.Drawing.Size(249, 54);
            this.txtB.TabIndex = 36;
            // 
            // rdD
            // 
            this.rdD.AutoSize = true;
            this.rdD.Location = new System.Drawing.Point(441, 627);
            this.rdD.Name = "rdD";
            this.rdD.Size = new System.Drawing.Size(99, 21);
            this.rdD.TabIndex = 39;
            this.rdD.TabStop = true;
            this.rdD.Text = "Jawaban D";
            this.rdD.UseVisualStyleBackColor = true;
            // 
            // txtD
            // 
            this.txtD.Location = new System.Drawing.Point(585, 626);
            this.txtD.Multiline = true;
            this.txtD.Name = "txtD";
            this.txtD.Size = new System.Drawing.Size(249, 54);
            this.txtD.TabIndex = 38;
            // 
            // rdE
            // 
            this.rdE.AutoSize = true;
            this.rdE.Location = new System.Drawing.Point(441, 687);
            this.rdE.Name = "rdE";
            this.rdE.Size = new System.Drawing.Size(98, 21);
            this.rdE.TabIndex = 41;
            this.rdE.TabStop = true;
            this.rdE.Text = "Jawaban E";
            this.rdE.UseVisualStyleBackColor = true;
            // 
            // txtE
            // 
            this.txtE.Location = new System.Drawing.Point(585, 686);
            this.txtE.Multiline = true;
            this.txtE.Name = "txtE";
            this.txtE.Size = new System.Drawing.Size(249, 54);
            this.txtE.TabIndex = 40;
            // 
            // rdC
            // 
            this.rdC.AutoSize = true;
            this.rdC.Location = new System.Drawing.Point(27, 746);
            this.rdC.Name = "rdC";
            this.rdC.Size = new System.Drawing.Size(98, 21);
            this.rdC.TabIndex = 43;
            this.rdC.TabStop = true;
            this.rdC.Text = "Jawaban C";
            this.rdC.UseVisualStyleBackColor = true;
            // 
            // txtC
            // 
            this.txtC.Location = new System.Drawing.Point(171, 745);
            this.txtC.Multiline = true;
            this.txtC.Name = "txtC";
            this.txtC.Size = new System.Drawing.Size(249, 54);
            this.txtC.TabIndex = 42;
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(369, 67);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(92, 28);
            this.btnSearch.TabIndex = 44;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // formManageSoal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1116, 868);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.rdC);
            this.Controls.Add(this.txtC);
            this.Controls.Add(this.rdE);
            this.Controls.Add(this.txtE);
            this.Controls.Add(this.rdD);
            this.Controls.Add(this.txtD);
            this.Controls.Add(this.rdB);
            this.Controls.Add(this.txtB);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.rdA);
            this.Controls.Add(this.txtA);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dtDibuat);
            this.Controls.Add(this.txtSearch);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnUpdate);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dataGridView1);
            this.Name = "formManageSoal";
            this.Text = "View/Update Soal";
            this.Load += new System.EventHandler(this.formManageSoal_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.DateTimePicker dtDibuat;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtNo;
        private System.Windows.Forms.TextBox txtPertanyaan;
        private System.Windows.Forms.TextBox txtA;
        private System.Windows.Forms.RadioButton rdA;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.RadioButton rdB;
        private System.Windows.Forms.TextBox txtB;
        private System.Windows.Forms.RadioButton rdD;
        private System.Windows.Forms.TextBox txtD;
        private System.Windows.Forms.RadioButton rdE;
        private System.Windows.Forms.TextBox txtE;
        private System.Windows.Forms.RadioButton rdC;
        private System.Windows.Forms.TextBox txtC;
        private System.Windows.Forms.ComboBox cbKelas;
        private System.Windows.Forms.ComboBox cbMapel;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column11;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column9;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column7;
        private System.Windows.Forms.DataGridViewButtonColumn Column8;
        private System.Windows.Forms.DataGridViewButtonColumn Column10;
    }
}