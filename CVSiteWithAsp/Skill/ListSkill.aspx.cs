using DataSetTableAdapters;
using System;

public partial class Skill_ListSkill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_skillsTableAdapter skillsTableAdapter = new tbl_skillsTableAdapter();
        Repeater1.DataSource = skillsTableAdapter.GetSkills();
        Repeater1.DataBind();
    }
}