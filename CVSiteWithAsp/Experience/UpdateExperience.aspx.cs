using DataSetTableAdapters;
using System;

public partial class Experience_UpdateExperience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbl_experienceTableAdapter experienceTableAdapter = new tbl_experienceTableAdapter();
            short id = short.Parse(Request.QueryString["Update"]);
            var value = experienceTableAdapter.GetFindExperience(id);
            txtTitle.Text = value[0]["exp_title"].ToString();
            txtSubtitle.Text = value[0]["exp_subtitle"].ToString();
            txtDescription.Text = value[0]["exp_description"].ToString();
            txtDate.Text = value[0]["exp_date"].ToString();
        }
    }

    protected void btnUpdateExperience_Click(object sender, EventArgs e)
    {
        tbl_experienceTableAdapter experienceTableAdapter = new tbl_experienceTableAdapter();
        short id = short.Parse(Request.QueryString["Update"]);
        experienceTableAdapter.UpdateExperience(txtTitle.Text, txtSubtitle.Text, txtDescription.Text, txtDate.Text, id);
        Response.Redirect("/Experience/ListExperience.aspx");
    }
}