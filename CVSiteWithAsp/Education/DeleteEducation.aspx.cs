using DataSetTableAdapters;
using System;

public partial class Education_DeleteEducation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_educationTableAdapter educationAdapter = new tbl_educationTableAdapter();
        short id = short.Parse(Request.QueryString["Delete"]);
        educationAdapter.DeleteEducation(id);
        Response.Redirect("/Education/ListEducation.aspx");
    }
}