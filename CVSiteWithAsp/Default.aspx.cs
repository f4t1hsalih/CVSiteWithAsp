using DataSetTableAdapters;
using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbl_aboutTableAdapter aboutAdapter = new tbl_aboutTableAdapter();
            Repeater1.DataSource = aboutAdapter.GetAbout();
            Repeater1.DataBind();

            tbl_experienceTableAdapter experienceAdapter = new tbl_experienceTableAdapter();
            Repeater2.DataSource = experienceAdapter.GetExperience();
            Repeater2.DataBind();

            tbl_educationTableAdapter educationAdapter = new tbl_educationTableAdapter();
            Repeater3.DataSource = educationAdapter.GetEducation();
            Repeater3.DataBind();
        }
    }
}
