using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Proje_Hastane
{
    public partial class FrmSekreterDetay : Form
    {
        public FrmSekreterDetay()
        {
            InitializeComponent();
        }
        public string tc;


        sqlbaglantisi bgl = new sqlbaglantisi();

        public void datagrid()
        {
            //Bransları Data Gride Çekme
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select BransAd from Tbl_Branslar", bgl.baglanti());
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        public void doktorlar()
        {
            //Doktorları Listeye aktarma
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter("select (DoktorAd + ' ' + DoktorSoyad)as 'Doktorlar',DoktorBrans from Tbl_Doktorlar", bgl.baglanti());
            da2.Fill(dt2);
            dataGridView2.DataSource = dt2;
        }

        private void FrmSekreterDetay_Load(object sender, EventArgs e)
        {
            LblTc.Text = tc;
            
            //Ad Soyad Çekme
            SqlCommand komut = new SqlCommand("Select SekterAdsoyad from tbl_sekreter where sekretertc=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", LblTc.Text);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                LblAdSoyad.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            datagrid();
            doktorlar();

            //Bransları Çekme
            SqlCommand komut3 = new SqlCommand("select BransAd from tbl_Branslar",bgl.baglanti());
            SqlDataReader dr2 = komut3.ExecuteReader();
            while (dr2.Read())
            {
                CmbBrans.Items.Add(dr2[0]);
            }
            bgl.baglanti().Close();
            datagrid();
            doktorlar();
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("insert into Tbl_Randevular (RandevuTarih,RandevuSaat,RandevuBrans,RandevuDoktor)values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", MskTarih.Text);
            komut2.Parameters.AddWithValue("@p2", MskSaat.Text);
            komut2.Parameters.AddWithValue("@p3", CmbBrans.Text);
            komut2.Parameters.AddWithValue("@p4", CmbDoktor.Text);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
            MessageBox.Show("Randevu Oluşmuştur");
            datagrid();
            doktorlar();
        }

        private void CmbBrans_SelectedIndexChanged(object sender, EventArgs e)
        {
            CmbDoktor.Items.Clear();
            SqlCommand komut4 = new SqlCommand("select DoktorAd,DoktorSoyad from tbl_Doktorlar where DoktorBrans=@p1", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", CmbBrans.Text);
            SqlDataReader dr = komut4.ExecuteReader();
            while (dr.Read())
            {
                CmbDoktor.Items.Add(dr[0] +" "+ dr[1]);
            }
            bgl.baglanti().Close();
            datagrid();
            doktorlar();
        }

        private void ChkDurum_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void BtnDuyuruOlustur_Click(object sender, EventArgs e)
        {
            SqlCommand duyuru = new SqlCommand("insert into Tbl_duyurular (Duyuru) values(@d1)", bgl.baglanti());
            duyuru.Parameters.AddWithValue("@d1", RchDuyuru.Text);
            duyuru.ExecuteNonQuery();
            bgl.baglanti().Close();
            MessageBox.Show("Duyuru Oluşturulmuştur");
            RchDuyuru.Clear();
        }

        private void BtnDoktorPanel_Click(object sender, EventArgs e)
        {
            FrmDoktorPaneli drp = new FrmDoktorPaneli();
            drp.Show();
        }

        private void BtnBransPanel_Click(object sender, EventArgs e)
        {
            FrmBrans fr = new FrmBrans();
            fr.Show();
        }

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }

        private void BtnListe_Click(object sender, EventArgs e)
        {
            FrmRandevuListesi frmr = new FrmRandevuListesi();
            frmr.Show();
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            datagrid();
            doktorlar();
        }

        private void CmbDoktor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
