using DataSetTableAdapters;
using System;

public partial class Login_LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        tbl_adminTableAdapter admin = new tbl_adminTableAdapter();
        string username = txtUsername.Text;
        string password = txtPassword.Text;
        if (admin.GetDataByUsernamePassword(username, password).Rows.Count > 0)
        {
            Session["username"] = username;
            Response.Redirect("/About/ListAbout.aspx");
        }
    }
}