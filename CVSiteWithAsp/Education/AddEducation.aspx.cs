using DataSetTableAdapters;
using System;

public partial class Education_AddEducation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddEducation_Click(object sender, EventArgs e)
    {
        tbl_educationTableAdapter educationAdapter = new tbl_educationTableAdapter();
        educationAdapter.InsertEducation(txtTitle.Text, txtSubtitle.Text, txtDescription.Text, txtNote.Text, txtDate.Text);
        Response.Redirect("/Education/ListEducation.aspx");
    }
}