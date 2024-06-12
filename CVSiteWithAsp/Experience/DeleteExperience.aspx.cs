using DataSetTableAdapters;
using System;

public partial class Experience_DeleteExperience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        short id = short.Parse(Request.QueryString["Delete"]);
        tbl_experienceTableAdapter experienceTableAdapter = new tbl_experienceTableAdapter();
        experienceTableAdapter.DeleteExperience(id);
        Response.Redirect("/Experience/ListExperience.aspx");
    }
}