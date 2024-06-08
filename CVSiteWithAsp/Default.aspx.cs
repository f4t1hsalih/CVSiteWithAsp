using DataSetTableAdapters;
using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                // tbl_aboutTableAdapter örneği oluşturuluyor.
                tbl_aboutTableAdapter aboutAdapter = new tbl_aboutTableAdapter();

                // Veritabanından verileri çekme
                var aboutData = aboutAdapter.GetAbout();

                if (aboutData != null && aboutData.Rows.Count > 0)
                {
                    // Verileri HTML elementlerine atama
                    name.Text = aboutData[0]["abt_name"].ToString(); 
                    surname.Text = aboutData[0]["abt_surname"].ToString(); 
                    address.Text = aboutData[0]["abt_address"].ToString();
                    tel.Text = aboutData[0]["abt_tel"].ToString();
                    mail.Text = aboutData[0]["abt_mail"].ToString();
                    note.Text = aboutData[0]["abt_note"].ToString();
                }
                else
                {
                    // Veri döndürülmediğinde yapılacak işlemler
                    name.Text = "Veri yok";
                    surname.Text = "Veri yok";
                }
            }
            catch (Exception ex)
            {
                // Hata yönetimi
                name.Text = "Hata";
                surname.Text = "Hata";
            }
        }
    }
}
