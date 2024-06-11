using DataSetTableAdapters;
using System;

public partial class Experience_AddExperience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddExperience_Click(object sender, EventArgs e)
    {
        tbl_experienceTableAdapter experienceTableAdapter = new tbl_experienceTableAdapter();
        experienceTableAdapter.AddExperience(txtTitle.Text, txtSubtitle.Text, txtDescription.Text, txtDate.Text);
        Response.Redirect("/Experience/ListExperience.aspx");
    }
}