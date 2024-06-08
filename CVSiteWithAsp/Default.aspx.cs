using DataSetTableAdapters;
using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbl_aboutTableAdapter aboutAdapter = new tbl_aboutTableAdapter();
            string fullname = (aboutAdapter.GetAbout()[0]["abt_name"] + " " + aboutAdapter.GetAbout()[0]["abt_surname"]).ToString();
            name.Text = fullname;
            Repeater1.DataSource = aboutAdapter.GetAbout();
            Repeater1.DataBind();

            tbl_experienceTableAdapter experienceAdapter = new tbl_experienceTableAdapter();
            Repeater2.DataSource = experienceAdapter.GetExperience();
            Repeater2.DataBind();

            tbl_educationTableAdapter educationAdapter = new tbl_educationTableAdapter();
            Repeater3.DataSource = educationAdapter.GetEducation();
            Repeater3.DataBind();

            tbl_skillsTableAdapter skillAdapter = new tbl_skillsTableAdapter();
            Repeater4.DataSource = skillAdapter.GetSkills();
            Repeater4.DataBind();

            tbl_interestTableAdapter interestAdapter = new tbl_interestTableAdapter();
            Repeater5.DataSource = interestAdapter.GetInterest();
            Repeater5.DataBind();

            tbl_awardTableAdapter awardAdapter = new tbl_awardTableAdapter();
            Repeater6.DataSource = awardAdapter.GetAward();
            Repeater6.DataBind();
        }
    }
}
