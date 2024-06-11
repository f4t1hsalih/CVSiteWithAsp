using DataSetTableAdapters;
using System;

public partial class Experience_ListExperience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_experienceTableAdapter experienceTableAdapter = new tbl_experienceTableAdapter();
        Repeater1.DataSource = experienceTableAdapter.GetExperience();
        Repeater1.DataBind();
    }
}