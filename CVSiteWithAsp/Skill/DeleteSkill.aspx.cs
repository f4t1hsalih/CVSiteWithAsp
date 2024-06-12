using DataSetTableAdapters;
using System;

public partial class Skill_DeleteSkill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        short id = short.Parse(Request.QueryString["Delete"]);
        tbl_skillsTableAdapter skillsTableAdapter = new tbl_skillsTableAdapter();
        skillsTableAdapter.DeleteSkill(id);
        Response.Redirect("/Skill/ListSkill.aspx");
    }
}