using DataSetTableAdapters;
using System;

public partial class Experience_UpdateExperience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbl_experienceTableAdapter experienceTableAdapter = new tbl_experienceTableAdapter();
            int id = Convert.ToInt16(Request.QueryString["Update"]);
            var value = experienceTableAdapter.GetFindExperience(Convert.ToInt16(id));
            txtTitle.Text = value[0]["exp_title"].ToString();
            txtSubtitle.Text = value[0]["exp_subtitle"].ToString();
            txtDescription.Text = value[0]["exp_description"].ToString();
            txtDate.Text = value[0]["exp_date"].ToString();
        }
    }
}