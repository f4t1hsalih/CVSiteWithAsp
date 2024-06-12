using DataSetTableAdapters;
using System;

public partial class Education_UpdateEducation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbl_educationTableAdapter educationTableAdapter = new tbl_educationTableAdapter();
            short id = short.Parse(Request.QueryString["Update"]);
            var value = educationTableAdapter.GetFindWithID(id);
            txtTitle.Text = value[0]["edc_title"].ToString();
            txtSubtitle.Text = value[0]["edc_subtitle"].ToString();
            txtDescription.Text = value[0]["edc_description"].ToString();
            txtNote.Text = value[0]["edc_note"].ToString();
            txtDate.Text = value[0]["edc_date"].ToString();
        }
    }

    protected void btnUpdateEducation_Click(object sender, EventArgs e)
    {
        tbl_educationTableAdapter educationTableAdapter = new tbl_educationTableAdapter();
        short id = short.Parse(Request.QueryString["Update"]);
        educationTableAdapter.UpdateEducation(txtTitle.Text, txtSubtitle.Text, txtDescription.Text,txtNote.Text, txtDate.Text, id);
        Response.Redirect("/Education/ListEducation.aspx");
    }
}