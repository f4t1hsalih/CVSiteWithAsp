using DataSetTableAdapters;
using System;

public partial class Award_UpdateAward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            short id = short.Parse(Request.QueryString["Update"]);
            tbl_awardTableAdapter awardTableAdapter = new tbl_awardTableAdapter();
            var value = awardTableAdapter.GetAwardWithID(id);
            txtAward.Text = value[0]["awd_award"].ToString();
        }
    }

    protected void btnUpdateAward_Click(object sender, EventArgs e)
    {
        short id = short.Parse(Request.QueryString["Update"]);
        tbl_awardTableAdapter awardTableAdapter = new tbl_awardTableAdapter();
        awardTableAdapter.UpdateAward(txtAward.Text, id);
        Response.Redirect("/Award/ListAward.aspx");
    }
}