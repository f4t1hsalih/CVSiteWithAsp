using DataSetTableAdapters;
using System;

public partial class Skill_UpdateSkill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbl_skillsTableAdapter skillsTableAdapter = new tbl_skillsTableAdapter();
            short id = short.Parse(Request.QueryString["Update"]);
            var value = skillsTableAdapter.GetSkillWithID(id);
            txtSkill.Text = value[0]["skl_skills"].ToString();
        }
    }

    protected void btnUpdateSkill_Click(object sender, EventArgs e)
    {
        tbl_skillsTableAdapter skillsTableAdapter = new tbl_skillsTableAdapter();
        short id = short.Parse(Request.QueryString["Update"]);
        skillsTableAdapter.UpdateSkill(txtSkill.Text, id);
        Response.Redirect("/Skill/ListSkill.aspx");
    }
}