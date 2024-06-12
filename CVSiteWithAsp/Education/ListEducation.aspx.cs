using DataSetTableAdapters;
using System;

public partial class Education_ListEducation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_educationTableAdapter educationTableAdapter = new tbl_educationTableAdapter();
        Repeater1.DataSource = educationTableAdapter.GetEducation();
        Repeater1.DataBind();
    }
}