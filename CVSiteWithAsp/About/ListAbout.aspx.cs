using DataSetTableAdapters;
using System;
using System.Data;
using System.Data.SqlClient;

public partial class About_ListAbout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadAboutInfo();
        }
    }

    private void LoadAboutInfo()
    {
        try
        {
            tbl_aboutTableAdapter aboutAdaptor = new tbl_aboutTableAdapter();
            DataTable dt = aboutAdaptor.GetAbout();

            if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];

                txtName.Text = row["abt_name"]?.ToString() ?? string.Empty;
                txtSurname.Text = row["abt_surname"]?.ToString() ?? string.Empty;
                txtAddress.Text = row["abt_address"]?.ToString() ?? string.Empty;
                txtMail.Text = row["abt_mail"]?.ToString() ?? string.Empty;
                txtTel.Text = row["abt_tel"]?.ToString() ?? string.Empty;
                txtNote.Text = row["abt_note"]?.ToString() ?? string.Empty;
                txtPhoto.Text = row["abt_photo"]?.ToString() ?? string.Empty;
                txtLinkedIn.Text = row["abt_linkedin"]?.ToString() ?? string.Empty;
                txtGitHub.Text = row["abt_github"]?.ToString() ?? string.Empty;
                txtTwitter.Text = row["abt_twitter"]?.ToString() ?? string.Empty;
                txtInstagram.Text = row["abt_instagram"]?.ToString() ?? string.Empty;
            }
            else
            {
                ShowMessage("Veri bulunamadı.");
            }
        }
        catch (SqlException ex)
        {
            // SQL hatalarını ayrı olarak ele alın
            ShowMessage($"Veritabanı hatası: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Genel hataları ele alın
            ShowMessage($"Bir hata oluştu: {ex.Message}");
        }
    }
    private void ShowMessage(string message)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "showErrorMessage('" + message + "');", true);
    }

    protected void btnAboutUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            tbl_aboutTableAdapter aboutAdaptor = new tbl_aboutTableAdapter();
            aboutAdaptor.UpdateAbout(txtName.Text, txtSurname.Text, txtAddress.Text, txtMail.Text, txtTel.Text, txtNote.Text, txtPhoto.Text, txtLinkedIn.Text, txtGitHub.Text, txtTwitter.Text, txtInstagram.Text);
            ShowMessage("Başarıyla Kayıt Yapıldı");
        }
        catch (Exception ex)
        {
            ShowMessage($"Veritabanı hatası: {ex.Message}");
        }

    }
}
