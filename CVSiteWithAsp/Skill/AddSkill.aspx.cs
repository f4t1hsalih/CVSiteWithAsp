using DataSetTableAdapters;
using System;

public partial class Skill_AddSkill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddSkill_Click(object sender, EventArgs e)
    {
        tbl_skillsTableAdapter skillsTableAdapter = new tbl_skillsTableAdapter();
        skillsTableAdapter.InsertSkill(txtSkill.Text);
        Response.Redirect("/Skill/ListSkill.aspx");
    }
}