﻿namespace Proje_Hastane
{
    partial class FrmHastaKayit
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmHastaKayit));
            this.TxtSoyad = new System.Windows.Forms.TextBox();
            this.MskTC = new System.Windows.Forms.MaskedTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.TxtAd = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.TxtSifre = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.CmbCinsiyet = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.BtnKayıtOl = new System.Windows.Forms.Button();
            this.MskTelefon = new System.Windows.Forms.MaskedTextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // TxtSoyad
            // 
            this.TxtSoyad.Location = new System.Drawing.Point(133, 67);
            this.TxtSoyad.Name = "TxtSoyad";
            this.TxtSoyad.Size = new System.Drawing.Size(171, 31);
            this.TxtSoyad.TabIndex = 2;
            // 
            // MskTC
            // 
            this.MskTC.Location = new System.Drawing.Point(133, 104);
            this.MskTC.Mask = "00000000000";
            this.MskTC.Name = "MskTC";
            this.MskTC.Size = new System.Drawing.Size(171, 31);
            this.MskTC.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(60, 70);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 23);
            this.label3.TabIndex = 6;
            this.label3.Text = "Soyad :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 107);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(121, 23);
            this.label2.TabIndex = 5;
            this.label2.Text = "TC Kimlik No :";
            // 
            // TxtAd
            // 
            this.TxtAd.Location = new System.Drawing.Point(133, 30);
            this.TxtAd.Name = "TxtAd";
            this.TxtAd.Size = new System.Drawing.Size(171, 31);
            this.TxtAd.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(86, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 23);
            this.label1.TabIndex = 9;
            this.label1.Text = "Ad :";
            // 
            // TxtSifre
            // 
            this.TxtSifre.Location = new System.Drawing.Point(133, 178);
            this.TxtSifre.Name = "TxtSifre";
            this.TxtSifre.Size = new System.Drawing.Size(171, 31);
            this.TxtSifre.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(73, 181);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(54, 23);
            this.label4.TabIndex = 11;
            this.label4.Text = "Şifre :";
            // 
            // CmbCinsiyet
            // 
            this.CmbCinsiyet.FormattingEnabled = true;
            this.CmbCinsiyet.Items.AddRange(new object[] {
            "Erkek",
            "Kadın"});
            this.CmbCinsiyet.Location = new System.Drawing.Point(133, 215);
            this.CmbCinsiyet.Name = "CmbCinsiyet";
            this.CmbCinsiyet.Size = new System.Drawing.Size(171, 31);
            this.CmbCinsiyet.TabIndex = 6;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(46, 218);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(81, 23);
            this.label5.TabIndex = 14;
            this.label5.Text = "Cinsiyet :";
            // 
            // BtnKayıtOl
            // 
            this.BtnKayıtOl.BackColor = System.Drawing.Color.LightGreen;
            this.BtnKayıtOl.ForeColor = System.Drawing.Color.Black;
            this.BtnKayıtOl.Location = new System.Drawing.Point(144, 265);
            this.BtnKayıtOl.Name = "BtnKayıtOl";
            this.BtnKayıtOl.Size = new System.Drawing.Size(141, 41);
            this.BtnKayıtOl.TabIndex = 7;
            this.BtnKayıtOl.Text = "Kayıt Ol";
            this.BtnKayıtOl.UseVisualStyleBackColor = false;
            this.BtnKayıtOl.Click += new System.EventHandler(this.BtnKayıtOl_Click);
            // 
            // MskTelefon
            // 
            this.MskTelefon.Location = new System.Drawing.Point(133, 141);
            this.MskTelefon.Mask = "(999) 000-0000";
            this.MskTelefon.Name = "MskTelefon";
            this.MskTelefon.Size = new System.Drawing.Size(171, 31);
            this.MskTelefon.TabIndex = 4;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(50, 144);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(77, 23);
            this.label6.TabIndex = 16;
            this.label6.Text = "Telefon :";
            // 
            // FrmHastaKayit
            // 
            this.AcceptButton = this.BtnKayıtOl;
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 23F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(366, 331);
            this.Controls.Add(this.MskTelefon);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.BtnKayıtOl);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.CmbCinsiyet);
            this.Controls.Add(this.TxtSifre);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.TxtAd);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.TxtSoyad);
            this.Controls.Add(this.MskTC);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Font = new System.Drawing.Font("Corbel", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(5);
            this.MaximizeBox = false;
            this.Name = "FrmHastaKayit";
            this.Text = "Hasta Kayıt";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox TxtSoyad;
        private System.Windows.Forms.MaskedTextBox MskTC;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox TxtAd;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TxtSifre;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox CmbCinsiyet;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button BtnKayıtOl;
        private System.Windows.Forms.MaskedTextBox MskTelefon;
        private System.Windows.Forms.Label label6;
    }
}